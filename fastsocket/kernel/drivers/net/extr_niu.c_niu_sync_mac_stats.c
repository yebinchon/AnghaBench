
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct niu {int flags; } ;


 int NIU_FLAGS_XMAC ;
 int niu_sync_bmac_stats (struct niu*) ;
 int niu_sync_xmac_stats (struct niu*) ;

__attribute__((used)) static void niu_sync_mac_stats(struct niu *np)
{
 if (np->flags & NIU_FLAGS_XMAC)
  niu_sync_xmac_stats(np);
 else
  niu_sync_bmac_stats(np);
}
