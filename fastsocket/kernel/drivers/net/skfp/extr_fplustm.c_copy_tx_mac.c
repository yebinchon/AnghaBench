
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct s_smc {int dummy; } ;
struct fddi_mac {int dummy; } ;
typedef int __le32 ;


 int CHECK_NPP () ;
 int FM_A (int ) ;
 int FM_CMDREG2 ;
 int FM_ISTTB ;
 int MARW (unsigned int) ;
 int le32_to_cpu (int ) ;
 int outpw (int ,int ) ;
 int write_mdr (struct s_smc*,int ) ;

__attribute__((used)) static void copy_tx_mac(struct s_smc *smc, u_long td, struct fddi_mac *mac,
   unsigned off, int len)




{
 int i ;
 __le32 *p ;

 CHECK_NPP() ;
 MARW(off) ;

 p = (__le32 *) mac ;
 for (i = (len + 3)/4 ; i ; i--) {
  if (i == 1) {

   outpw(FM_A(FM_CMDREG2),FM_ISTTB) ;
  }
  write_mdr(smc,le32_to_cpu(*p)) ;
  p++ ;
 }

 outpw(FM_A(FM_CMDREG2),FM_ISTTB) ;
 write_mdr(smc,td) ;
}
