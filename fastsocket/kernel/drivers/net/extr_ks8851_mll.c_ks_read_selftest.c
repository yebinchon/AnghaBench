
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ks_net {int dummy; } ;


 int KS_MBIR ;
 unsigned int MBIR_RXMBF ;
 unsigned int MBIR_RXMBFA ;
 unsigned int MBIR_TXMBF ;
 unsigned int MBIR_TXMBFA ;
 int ks_err (struct ks_net*,char*) ;
 int ks_info (struct ks_net*,char*) ;
 unsigned int ks_rdreg16 (struct ks_net*,int ) ;
 int ks_warn (struct ks_net*,char*) ;

__attribute__((used)) static int ks_read_selftest(struct ks_net *ks)
{
 unsigned both_done = MBIR_TXMBF | MBIR_RXMBF;
 int ret = 0;
 unsigned rd;

 rd = ks_rdreg16(ks, KS_MBIR);

 if ((rd & both_done) != both_done) {
  ks_warn(ks, "Memory selftest not finished\n");
  return 0;
 }

 if (rd & MBIR_TXMBFA) {
  ks_err(ks, "TX memory selftest fails\n");
  ret |= 1;
 }

 if (rd & MBIR_RXMBFA) {
  ks_err(ks, "RX memory selftest fails\n");
  ret |= 2;
 }

 ks_info(ks, "the selftest passes\n");
 return ret;
}
