
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int EV6__D_STAT__ECC_ERR_LD ;
 int EV6__D_STAT__ECC_ERR_ST ;
 int EV6__D_STAT__ERRMASK ;
 int EV6__D_STAT__SEO ;
 int EV6__D_STAT__TPERR_P0 ;
 int EV6__D_STAT__TPERR_P1 ;
 int EV6__MM_STAT__DC_TAG_PERR ;
 int EV6__MM_STAT__ERRMASK ;
 int MCHK_DISPOSITION_REPORT ;
 int MCHK_DISPOSITION_UNKNOWN_ERROR ;
 int err_print_prefix ;
 int printk (char*,int ,...) ;

__attribute__((used)) static int
ev6_parse_mbox(u64 mm_stat, u64 d_stat, u64 c_stat, int print)
{
 int status = MCHK_DISPOSITION_REPORT;
 if (!(d_stat & ((1UL << 0) | (1UL << 1) | (1UL << 2) | (1UL << 3) | (1UL << 4))) &&
     !(mm_stat & ((1UL << 10))))
  return MCHK_DISPOSITION_UNKNOWN_ERROR;

 if (!print)
  return status;

 if (mm_stat & (1UL << 10))
  printk("%s    Dcache tag parity error on probe\n",
         err_print_prefix);
 if (d_stat & (1UL << 0))
  printk("%s    Dcache tag parity error - pipe 0\n",
         err_print_prefix);
 if (d_stat & (1UL << 1))
  printk("%s    Dcache tag parity error - pipe 1\n",
         err_print_prefix);
 if (d_stat & (1UL << 2))
  printk("%s    ECC error occurred on a store\n",
         err_print_prefix);
 if (d_stat & (1UL << 3))
  printk("%s    ECC error occurred on a %s load\n",
         err_print_prefix,
         c_stat ? "" : "speculative ");
 if (d_stat & (1UL << 4))
  printk("%s    Dcache second error\n", err_print_prefix);

 return status;
}
