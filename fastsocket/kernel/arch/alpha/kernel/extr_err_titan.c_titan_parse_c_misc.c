
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int EXTRACT (int,int ) ;
 int MCHK_DISPOSITION_REPORT ;
 int MCHK_DISPOSITION_UNKNOWN_ERROR ;
 int TITAN__CCHIP_MISC__NXM ;
 int TITAN__CCHIP_MISC__NXS ;
 int err_print_prefix ;
 int printk (char*,int ,char*,int) ;

__attribute__((used)) static int
titan_parse_c_misc(u64 c_misc, int print)
{




 int status = MCHK_DISPOSITION_REPORT;





 if (!(c_misc & (1UL << 28)))
  return MCHK_DISPOSITION_UNKNOWN_ERROR;
 return status;
}
