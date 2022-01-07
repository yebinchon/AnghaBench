
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int EXTRACT (int,int ) ;
 int MCHK_DISPOSITION_DISMISS ;
 int MCHK_DISPOSITION_REPORT ;
 int MCHK_DISPOSITION_UNKNOWN_ERROR ;
 int TITAN__PCHIP_PERROR__ADDR ;
 int TITAN__PCHIP_PERROR__APE ;
 int TITAN__PCHIP_PERROR__CMD ;
 int TITAN__PCHIP_PERROR__DAC ;
 int TITAN__PCHIP_PERROR__DCRTO ;
 int TITAN__PCHIP_PERROR__DPE ;
 int TITAN__PCHIP_PERROR__ERRMASK ;
 int TITAN__PCHIP_PERROR__IPTPR ;
 int TITAN__PCHIP_PERROR__IPTPW ;
 int TITAN__PCHIP_PERROR__LOST ;
 int TITAN__PCHIP_PERROR__MWIN ;
 int TITAN__PCHIP_PERROR__NDS ;
 int TITAN__PCHIP_PERROR__PERR ;
 int TITAN__PCHIP_PERROR__SERR ;
 int TITAN__PCHIP_PERROR__SGE ;
 int TITAN__PCHIP_PERROR__TA ;
 int err_print_prefix ;
 int printk (char*,int ,...) ;

__attribute__((used)) static int
titan_parse_p_perror(int which, int port, u64 perror, int print)
{
 int cmd;
 unsigned long addr;
 int status = MCHK_DISPOSITION_REPORT;
 if (!(perror & ((1UL << 0) | (1UL << 1) | (1UL << 2) | (1UL << 3) | (1UL << 4) | (1UL << 5) | (1UL << 6) | (1UL << 7) | (1UL << 8) | (1UL << 9) | (1UL << 10))))
  return MCHK_DISPOSITION_UNKNOWN_ERROR;

 cmd = EXTRACT(perror, TITAN__PCHIP_PERROR__CMD);
 addr = EXTRACT(perror, TITAN__PCHIP_PERROR__ADDR) << 2;
 if (((perror & (1UL << 8)) ||
      ((perror & ((1UL << 0) | (1UL << 1) | (1UL << 2) | (1UL << 3) | (1UL << 4) | (1UL << 5) | (1UL << 6) | (1UL << 7) | (1UL << 8) | (1UL << 9) | (1UL << 10))) ==
       (1UL << 0))) &&
     ((((cmd & 0xE) == 2) && (addr < 0x1000)) ||
      (((cmd & 0xE) == 6) && (addr >= 0xA0000) && (addr < 0x100000)))) {
  status = MCHK_DISPOSITION_DISMISS;
 }
 return status;
}
