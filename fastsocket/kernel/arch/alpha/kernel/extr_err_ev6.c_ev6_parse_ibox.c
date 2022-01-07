
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int EV6__I_STAT__ERRMASK ;
 int EV6__I_STAT__PAR ;
 int MCHK_DISPOSITION_REPORT ;
 int MCHK_DISPOSITION_UNKNOWN_ERROR ;
 int err_print_prefix ;
 int printk (char*,int ) ;

__attribute__((used)) static int
ev6_parse_ibox(u64 i_stat, int print)
{
 int status = MCHK_DISPOSITION_REPORT;




 if (!(i_stat & ((1UL << 29))))
  return MCHK_DISPOSITION_UNKNOWN_ERROR;

 if (!print)
  return status;

 if (i_stat & (1UL << 29))
  printk("%s    Icache parity error\n", err_print_prefix);

 return status;
}
