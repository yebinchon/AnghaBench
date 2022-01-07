
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct ucc_geth_private {scalar_t__* indAddrRegUsed; } ;


 int hw_clear_addr_in_paddr (struct ucc_geth_private*,size_t) ;

__attribute__((used)) static int ugeth_82xx_filtering_clear_addr_in_paddr(struct ucc_geth_private *ugeth,
          u8 paddr_num)
{
 ugeth->indAddrRegUsed[paddr_num] = 0;
 return hw_clear_addr_in_paddr(ugeth, paddr_num);
}
