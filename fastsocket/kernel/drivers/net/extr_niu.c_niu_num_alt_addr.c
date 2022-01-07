
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct niu {int flags; } ;


 int BMAC_NUM_ALT_ADDR ;
 int NIU_FLAGS_XMAC ;
 int XMAC_NUM_ALT_ADDR ;

__attribute__((used)) static int niu_num_alt_addr(struct niu *np)
{
 if (np->flags & NIU_FLAGS_XMAC)
  return XMAC_NUM_ALT_ADDR;
 else
  return BMAC_NUM_ALT_ADDR;
}
