
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sbridge_pvt {int** csrow_map; } ;
struct mem_ctl_info {struct sbridge_pvt* pvt_info; } ;
struct mce {scalar_t__ addr; int cpu; int status; int mcgstatus; } ;


 int GET_BITFIELD (int ,int,int) ;
 int GFP_ATOMIC ;
 int NUM_CHANNELS ;
 int debugf0 (char*,char*) ;
 int edac_mc_handle_ce_no_info (struct mem_ctl_info*,char*) ;
 int edac_mc_handle_fbd_ce (struct mem_ctl_info*,int,int ,char*) ;
 int edac_mc_handle_fbd_ue (struct mem_ctl_info*,int,int ,int ,char*) ;
 long find_first_bit (long*,int ) ;
 struct mem_ctl_info* get_mci_for_node_id (int) ;
 int get_memory_error_data (struct mem_ctl_info*,scalar_t__,int*,long*,int*,char*) ;
 char* kasprintf (int ,char*,int,char*,char*,char*,char*,char*,int ,int,int,int,long long,int,long,long,int) ;
 int kfree (char*) ;

__attribute__((used)) static void sbridge_mce_output_error(struct mem_ctl_info *mci,
        const struct mce *m)
{
 struct mem_ctl_info *new_mci;
 struct sbridge_pvt *pvt = mci->pvt_info;
 char *type, *optype, *msg, *recoverable_msg;
 bool ripv = GET_BITFIELD(m->mcgstatus, 0, 0);
 bool overflow = GET_BITFIELD(m->status, 62, 62);
 bool uncorrected_error = GET_BITFIELD(m->status, 61, 61);
 bool recoverable = GET_BITFIELD(m->status, 56, 56);
 u32 core_err_cnt = GET_BITFIELD(m->status, 38, 52);
 u32 mscod = GET_BITFIELD(m->status, 16, 31);
 u32 errcode = GET_BITFIELD(m->status, 0, 15);
 u32 channel = GET_BITFIELD(m->status, 0, 3);
 u32 optypenum = GET_BITFIELD(m->status, 4, 6);
 long channel_mask, first_channel;
 u8 rank, socket;
 int csrow, rc, dimm;
 char *area_type = "Unknown";

 if (ripv)
  type = "NON_FATAL";
 else
  type = "FATAL";
 if (! ((errcode & 0xef80) == 0x80)) {
  optype = "Can't parse: it is not a mem";
 } else {
  switch (optypenum) {
  case 0:
   optype = "generic undef request";
   break;
  case 1:
   optype = "memory read";
   break;
  case 2:
   optype = "memory write";
   break;
  case 3:
   optype = "addr/cmd";
   break;
  case 4:
   optype = "memory scrubbing";
   break;
  default:
   optype = "reserved";
   break;
  }
 }

 rc = get_memory_error_data(mci, m->addr, &socket,
       &channel_mask, &rank, area_type);
 if (rc < 0)
  return;
 new_mci = get_mci_for_node_id(socket);
 if (!new_mci) {
  edac_mc_handle_ce_no_info(mci, "Error: socket got corrupted!");
  return;
 }
 mci = new_mci;
 pvt = mci->pvt_info;

 first_channel = find_first_bit(&channel_mask, NUM_CHANNELS);

 if (rank < 4)
  dimm = 0;
 else if (rank < 8)
  dimm = 1;
 else
  dimm = 2;

 csrow = pvt->csrow_map[first_channel][dimm];

 if (uncorrected_error && recoverable)
  recoverable_msg = " recoverable";
 else
  recoverable_msg = "";






 msg = kasprintf(GFP_ATOMIC,
   "%d %s error(s): %s on %s area %s%s: cpu=%d Err=%04x:%04x (ch=%d), "
   "addr = 0x%08llx => socket=%d, Channel=%ld(mask=%ld), rank=%d\n",
   core_err_cnt,
   area_type,
   optype,
   type,
   recoverable_msg,
   overflow ? "OVERFLOW" : "",
   m->cpu,
   mscod, errcode,
   channel,
   (long long) m->addr,
   socket,
   first_channel,
   channel_mask,
   rank);

 debugf0("%s", msg);


 if (uncorrected_error)
  edac_mc_handle_fbd_ue(mci, csrow, 0, 0, msg);
 else
  edac_mc_handle_fbd_ce(mci, csrow, 0, msg);

 kfree(msg);
}
