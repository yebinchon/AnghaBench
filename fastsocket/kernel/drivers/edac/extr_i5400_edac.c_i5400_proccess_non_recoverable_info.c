
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_ctl_info {int dummy; } ;
struct i5400_error_info {int ferr_fat_fbd; } ;
typedef int msg ;


 int ARRAY_SIZE (int *) ;
 int EDAC_MC_LABEL_LEN ;
 unsigned long ERROR_FAT_MASK ;
 unsigned long FERR_NF_UNCORRECTABLE ;
 int debugf0 (char*,int,int,int,int,int,int,char*,int,int) ;
 int edac_mc_handle_fbd_ue (struct mem_ctl_info*,int,int,int,char*) ;
 int * error_name ;
 int extract_fbdchan_indx (int ) ;
 int find_first_bit (unsigned long*,int ) ;
 int nrec_bank (struct i5400_error_info*) ;
 int nrec_buf_id (struct i5400_error_info*) ;
 int nrec_cas (struct i5400_error_info*) ;
 int nrec_rank (struct i5400_error_info*) ;
 int nrec_ras (struct i5400_error_info*) ;
 int nrec_rdwr (struct i5400_error_info*) ;
 char* rdwr_str (int) ;
 int snprintf (char*,int,char*,char*,int,int,int,char*,int,int,char*,unsigned long,int ) ;

__attribute__((used)) static void i5400_proccess_non_recoverable_info(struct mem_ctl_info *mci,
        struct i5400_error_info *info,
        unsigned long allErrors)
{
 char msg[EDAC_MC_LABEL_LEN + 1 + 90 + 80];
 int branch;
 int channel;
 int bank;
 int buf_id;
 int rank;
 int rdwr;
 int ras, cas;
 int errnum;
 char *type = ((void*)0);

 if (!allErrors)
  return;

 if (allErrors & ERROR_FAT_MASK)
  type = "FATAL";
 else if (allErrors & FERR_NF_UNCORRECTABLE)
  type = "NON-FATAL uncorrected";
 else
  type = "NON-FATAL recoverable";



 branch = extract_fbdchan_indx(info->ferr_fat_fbd);
 channel = branch;


 bank = nrec_bank(info);
 rank = nrec_rank(info);
 buf_id = nrec_buf_id(info);
 rdwr = nrec_rdwr(info);
 ras = nrec_ras(info);
 cas = nrec_cas(info);

 debugf0("\t\tCSROW= %d  Channels= %d,%d  (Branch= %d "
  "DRAM Bank= %d Buffer ID = %d rdwr= %s ras= %d cas= %d)\n",
  rank, channel, channel + 1, branch >> 1, bank,
  buf_id, rdwr_str(rdwr), ras, cas);


 errnum = find_first_bit(&allErrors, ARRAY_SIZE(error_name));


 snprintf(msg, sizeof(msg),
   "%s (Branch=%d DRAM-Bank=%d Buffer ID = %d RDWR=%s "
   "RAS=%d CAS=%d %s Err=0x%lx (%s))",
   type, branch >> 1, bank, buf_id, rdwr_str(rdwr), ras, cas,
   type, allErrors, error_name[errnum]);


 edac_mc_handle_fbd_ue(mci, rank, channel, channel + 1, msg);
}
