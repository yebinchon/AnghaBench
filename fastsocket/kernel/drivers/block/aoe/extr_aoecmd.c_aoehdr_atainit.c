
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct aoetgt {int addr; TYPE_1__* ifp; } ;
struct aoedev {int aoeminor; int aoemajor; } ;
struct aoe_hdr {int tag; int cmd; int minor; int major; int verfl; int type; int dst; int src; } ;
struct TYPE_4__ {int dev_addr; } ;
struct TYPE_3__ {TYPE_2__* nd; } ;


 int AOECMD_ATA ;
 int AOE_HVER ;
 int ETH_P_AOE ;
 int __constant_cpu_to_be16 (int ) ;
 int cpu_to_be16 (int ) ;
 int cpu_to_be32 (int ) ;
 int memcpy (int ,int ,int) ;
 int newtag (struct aoedev*) ;

__attribute__((used)) static u32
aoehdr_atainit(struct aoedev *d, struct aoetgt *t, struct aoe_hdr *h)
{
 u32 host_tag = newtag(d);

 memcpy(h->src, t->ifp->nd->dev_addr, sizeof h->src);
 memcpy(h->dst, t->addr, sizeof h->dst);
 h->type = __constant_cpu_to_be16(ETH_P_AOE);
 h->verfl = AOE_HVER;
 h->major = cpu_to_be16(d->aoemajor);
 h->minor = d->aoeminor;
 h->cmd = AOECMD_ATA;
 h->tag = cpu_to_be32(host_tag);

 return host_tag;
}
