
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_ctl_info {int dummy; } ;
struct i5400_error_info {int ferr_nf_fbd; int redmemb; } ;
typedef int msg ;


 int ARRAY_SIZE (int *) ;
 int EDAC_MC_LABEL_LEN ;
 unsigned long ERROR_NF_CORRECTABLE ;
 unsigned long ERROR_NF_RECOVERABLE ;
 unsigned long ERROR_NF_UNCORRECTABLE ;
 int FERR_NF_MASK ;
 int KERN_EMERG ;
 scalar_t__ REC_ECC_LOCATOR_ODD (int ) ;
 int debugf0 (char*,int,...) ;
 int edac_mc_handle_fbd_ce (struct mem_ctl_info*,int,int,char*) ;
 int * error_name ;
 int extract_fbdchan_indx (int) ;
 int find_first_bit (unsigned long*,int ) ;
 unsigned long from_nf_ferr (int) ;
 int i5400_mc_printk (struct mem_ctl_info*,int ,char*,int,unsigned long,int ) ;
 int i5400_proccess_non_recoverable_info (struct mem_ctl_info*,struct i5400_error_info*,unsigned long) ;
 char* rdwr_str (int) ;
 int rec_bank (struct i5400_error_info*) ;
 int rec_cas (struct i5400_error_info*) ;
 int rec_rank (struct i5400_error_info*) ;
 int rec_ras (struct i5400_error_info*) ;
 int rec_rdwr (struct i5400_error_info*) ;
 int snprintf (char*,int,char*,int,int,char*,int,int,unsigned long,int ) ;

__attribute__((used)) static void i5400_process_nonfatal_error_info(struct mem_ctl_info *mci,
     struct i5400_error_info *info)
{
 char msg[EDAC_MC_LABEL_LEN + 1 + 90 + 80];
 unsigned long allErrors;
 int branch;
 int channel;
 int bank;
 int rank;
 int rdwr;
 int ras, cas;
 int errnum;


 allErrors = from_nf_ferr(info->ferr_nf_fbd & FERR_NF_MASK);
 if (!allErrors)
  return;



 if (allErrors & (ERROR_NF_UNCORRECTABLE | ERROR_NF_RECOVERABLE)) {
  i5400_proccess_non_recoverable_info(mci, info, allErrors);
  return;
 }


 if (allErrors & ERROR_NF_CORRECTABLE) {
  debugf0("\tCorrected bits= 0x%lx\n", allErrors);

  branch = extract_fbdchan_indx(info->ferr_nf_fbd);

  channel = 0;
  if (REC_ECC_LOCATOR_ODD(info->redmemb))
   channel = 1;



  channel += branch;

  bank = rec_bank(info);
  rank = rec_rank(info);
  rdwr = rec_rdwr(info);
  ras = rec_ras(info);
  cas = rec_cas(info);


  errnum = find_first_bit(&allErrors, ARRAY_SIZE(error_name));

  debugf0("\t\tCSROW= %d Channel= %d  (Branch %d "
   "DRAM Bank= %d rdwr= %s ras= %d cas= %d)\n",
   rank, channel, branch >> 1, bank,
   rdwr_str(rdwr), ras, cas);


  snprintf(msg, sizeof(msg),
    "Corrected error (Branch=%d DRAM-Bank=%d RDWR=%s "
    "RAS=%d CAS=%d, CE Err=0x%lx (%s))",
    branch >> 1, bank, rdwr_str(rdwr), ras, cas,
    allErrors, error_name[errnum]);


  edac_mc_handle_fbd_ce(mci, rank, channel, msg);

  return;
 }


 errnum = find_first_bit(&allErrors, ARRAY_SIZE(error_name));

 branch = extract_fbdchan_indx(info->ferr_nf_fbd);

 i5400_mc_printk(mci, KERN_EMERG,
   "Non-Fatal misc error (Branch=%d Err=%#lx (%s))",
   branch >> 1, allErrors, error_name[errnum]);
}
