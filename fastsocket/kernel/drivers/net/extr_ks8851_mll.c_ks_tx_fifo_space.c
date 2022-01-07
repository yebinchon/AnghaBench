
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ks_net {int dummy; } ;


 int KS_TXMIR ;
 int ks_rdreg16 (struct ks_net*,int ) ;

__attribute__((used)) static inline u16 ks_tx_fifo_space(struct ks_net *ks)
{
 return ks_rdreg16(ks, KS_TXMIR) & 0x1fff;
}
