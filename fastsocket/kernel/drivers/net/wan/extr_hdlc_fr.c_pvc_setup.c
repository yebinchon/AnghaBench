
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int hard_header_len; int addr_len; int priv_flags; int flags; int type; } ;


 int ARPHRD_DLCI ;
 int IFF_POINTOPOINT ;
 int IFF_XMIT_DST_RELEASE ;

__attribute__((used)) static void pvc_setup(struct net_device *dev)
{
 dev->type = ARPHRD_DLCI;
 dev->flags = IFF_POINTOPOINT;
 dev->hard_header_len = 10;
 dev->addr_len = 2;
 dev->priv_flags &= ~IFF_XMIT_DST_RELEASE;
}
