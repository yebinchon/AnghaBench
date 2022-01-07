
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct niu {int flags; } ;


 int NIU_FLAGS_XMAC ;
 int niu_bmac_interrupt (struct niu*) ;
 int niu_xmac_interrupt (struct niu*) ;

__attribute__((used)) static int niu_mac_interrupt(struct niu *np)
{
 if (np->flags & NIU_FLAGS_XMAC)
  niu_xmac_interrupt(np);
 else
  niu_bmac_interrupt(np);

 return 0;
}
