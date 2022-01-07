
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ace_private {int dummy; } ;


 int ACE_TX_RING_ENTRIES (struct ace_private*) ;

__attribute__((used)) static inline int tx_space (struct ace_private *ap, u32 csm, u32 prd)
{
 return (csm - prd - 1) & (ACE_TX_RING_ENTRIES(ap) - 1);
}
