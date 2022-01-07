
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 size_t EXTRACT (int,int ) ;
 int MCHK_DISPOSITION_REPORT ;
 int MCHK_DISPOSITION_UNKNOWN_ERROR ;
 int TITAN__PCHIP_SERROR__ADDR ;
 int TITAN__PCHIP_SERROR__CMD ;
 int TITAN__PCHIP_SERROR__ECCMASK ;
 int TITAN__PCHIP_SERROR__ERRMASK ;
 int TITAN__PCHIP_SERROR__LOST_CRE ;
 int TITAN__PCHIP_SERROR__LOST_UECC ;
 int TITAN__PCHIP_SERROR__NXIO ;
 int TITAN__PCHIP_SERROR__SRC ;
 int TITAN__PCHIP_SERROR__SYN ;
 int TITAN__PCHIP_SERROR__UECC ;
 int err_print_prefix ;
 int printk (char*,int ,...) ;

__attribute__((used)) static int
titan_parse_p_serror(int which, u64 serror, int print)
{
 int status = MCHK_DISPOSITION_REPORT;
 if (!(serror & ((1UL << 0) | (1UL << 1) | (1UL << 2) | (1UL << 3) | (1UL << 4))))
  return MCHK_DISPOSITION_UNKNOWN_ERROR;
 return status;
}
