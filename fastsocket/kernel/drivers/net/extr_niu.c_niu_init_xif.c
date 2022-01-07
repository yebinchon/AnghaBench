
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct niu {int flags; } ;


 int NIU_FLAGS_XMAC ;
 int niu_init_xif_bmac (struct niu*) ;
 int niu_init_xif_xmac (struct niu*) ;

__attribute__((used)) static void niu_init_xif(struct niu *np)
{
 if (np->flags & NIU_FLAGS_XMAC)
  niu_init_xif_xmac(np);
 else
  niu_init_xif_bmac(np);
}
