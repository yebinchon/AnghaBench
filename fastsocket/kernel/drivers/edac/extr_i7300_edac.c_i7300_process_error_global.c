
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct mem_ctl_info {struct i7300_pvt* pvt_info; } ;
struct i7300_pvt {int pci_dev_16_2_fsb_err_regs; } ;


 int ARRAY_SIZE (int ) ;
 int FERR_GLOBAL_HI ;
 int FERR_GLOBAL_LO ;
 char* GET_ERR_FROM_TABLE (int ,unsigned long) ;
 int KERN_EMERG ;
 int ferr_global_hi_is_fatal (unsigned long) ;
 int ferr_global_hi_name ;
 int ferr_global_lo_is_fatal (unsigned long) ;
 int ferr_global_lo_name ;
 unsigned long find_first_bit (unsigned long*,int ) ;
 int i7300_mc_printk (struct mem_ctl_info*,int ,char*,char*,char const*) ;
 int pci_read_config_dword (int ,int ,unsigned long*) ;
 int pci_write_config_dword (int ,int ,unsigned long) ;
 scalar_t__ unlikely (unsigned long) ;

__attribute__((used)) static void i7300_process_error_global(struct mem_ctl_info *mci)
{
 struct i7300_pvt *pvt;
 u32 errnum, value;
 unsigned long errors;
 const char *specific;
 bool is_fatal;

 pvt = mci->pvt_info;


 pci_read_config_dword(pvt->pci_dev_16_2_fsb_err_regs,
         FERR_GLOBAL_HI, &value);
 if (unlikely(value)) {
  errors = value;
  errnum = find_first_bit(&errors,
     ARRAY_SIZE(ferr_global_hi_name));
  specific = GET_ERR_FROM_TABLE(ferr_global_hi_name, errnum);
  is_fatal = ferr_global_hi_is_fatal(errnum);


  pci_write_config_dword(pvt->pci_dev_16_2_fsb_err_regs,
           FERR_GLOBAL_HI, value);

  goto error_global;
 }

 pci_read_config_dword(pvt->pci_dev_16_2_fsb_err_regs,
         FERR_GLOBAL_LO, &value);
 if (unlikely(value)) {
  errors = value;
  errnum = find_first_bit(&errors,
     ARRAY_SIZE(ferr_global_lo_name));
  specific = GET_ERR_FROM_TABLE(ferr_global_lo_name, errnum);
  is_fatal = ferr_global_lo_is_fatal(errnum);


  pci_write_config_dword(pvt->pci_dev_16_2_fsb_err_regs,
           FERR_GLOBAL_LO, value);

  goto error_global;
 }
 return;

error_global:
 i7300_mc_printk(mci, KERN_EMERG, "%s misc error: %s\n",
   is_fatal ? "Fatal" : "NOT fatal", specific);
}
