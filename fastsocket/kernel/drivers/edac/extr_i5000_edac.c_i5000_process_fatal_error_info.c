
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mem_ctl_info {int dummy; } ;
struct i5000_error_info {int ferr_fat_fbd; int nrecmemb; int nrecmema; } ;
typedef int msg ;


 int EDAC_MC_LABEL_LEN ;
 int EXTRACT_FBDCHAN_INDX (int) ;



 int FERR_FAT_MASK ;
 int NREC_BANK (int ) ;
 int NREC_CAS (int ) ;
 int NREC_RANK (int ) ;
 int NREC_RAS (int ) ;
 int NREC_RDWR (int ) ;
 int debugf0 (char*,int,int,int,int,char*,int,int) ;
 int edac_mc_handle_fbd_ue (struct mem_ctl_info*,int,int,int,char*) ;
 int snprintf (char*,int,char*,int,int,char*,int,int,int,char*) ;

__attribute__((used)) static void i5000_process_fatal_error_info(struct mem_ctl_info *mci,
     struct i5000_error_info *info,
     int handle_errors)
{
 char msg[EDAC_MC_LABEL_LEN + 1 + 160];
 char *specific = ((void*)0);
 u32 allErrors;
 int branch;
 int channel;
 int bank;
 int rank;
 int rdwr;
 int ras, cas;


 allErrors = (info->ferr_fat_fbd & FERR_FAT_MASK);
 if (!allErrors)
  return;

 branch = EXTRACT_FBDCHAN_INDX(info->ferr_fat_fbd);
 channel = branch;


 bank = NREC_BANK(info->nrecmema);
 rank = NREC_RANK(info->nrecmema);
 rdwr = NREC_RDWR(info->nrecmema);
 ras = NREC_RAS(info->nrecmemb);
 cas = NREC_CAS(info->nrecmemb);







 debugf0("\t\tCSROW= %d  Channel= %d  (Branch= %d "
  "DRAM Bank= %d rdwr= %s ras= %d cas= %d)\n",
  rank, channel, branch >> 1, bank,
  rdwr ? "Write" : "Read", ras, cas);


 switch (allErrors) {
 case 130:
  specific = "Alert on non-redundant retry or fast "
    "reset timeout";
  break;
 case 129:
  specific = "Northbound CRC error on non-redundant "
    "retry";
  break;
 case 128:
  {
  static int done;
  if (done)
   return;
  done++;

  specific = ">Tmid Thermal event with intelligent "
      "throttling disabled";
  }
  break;
 }


 snprintf(msg, sizeof(msg),
   "(Branch=%d DRAM-Bank=%d RDWR=%s RAS=%d CAS=%d "
   "FATAL Err=0x%x (%s))",
   branch >> 1, bank, rdwr ? "Write" : "Read", ras, cas,
   allErrors, specific);


 edac_mc_handle_fbd_ue(mci, rank, channel, channel, msg);
}
