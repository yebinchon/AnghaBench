
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {int fragcount; int startlo; int link; int cntlo; int inuse; scalar_t__ seqno; scalar_t__ starthi; scalar_t__ length; scalar_t__ status; scalar_t__ cnthi; scalar_t__ fraglength; scalar_t__ config; } ;
typedef TYPE_1__ tda_t ;
struct net_device {int mem_start; int mem_end; } ;
typedef TYPE_1__ rra_t ;
typedef TYPE_1__ rda_t ;
struct TYPE_8__ {int tdastart; int txbufstart; int rxbufcnt; int rrastart; int rdastart; int rxbufstart; int lastrxdescr; int txused; scalar_t__ txusedcnt; scalar_t__ currtxdescr; scalar_t__ nexttxdescr; scalar_t__ nextrxdescr; scalar_t__ base; } ;
typedef TYPE_4__ ibmlana_priv ;


 int PKTSIZE ;
 int TXBUFCNT ;
 int memcpy_toio (scalar_t__,TYPE_1__*,int) ;
 int memset (int ,int ,int) ;
 int memset_io (scalar_t__,int,int) ;
 TYPE_4__* netdev_priv (struct net_device*) ;

__attribute__((used)) static void InitDscrs(struct net_device *dev)
{
 ibmlana_priv *priv = netdev_priv(dev);
 u32 addr, baddr, raddr;
 int z;
 tda_t tda;
 rda_t rda;
 rra_t rra;



 memset_io(priv->base, 0xaa,
        dev->mem_start - dev->mem_start);



 priv->tdastart = addr = 0;
 priv->txbufstart = baddr = sizeof(tda_t) * TXBUFCNT;
 for (z = 0; z < TXBUFCNT; z++) {
  tda.status = 0;
  tda.config = 0;
  tda.length = 0;
  tda.fragcount = 1;
  tda.startlo = baddr;
  tda.starthi = 0;
  tda.fraglength = 0;
  if (z == TXBUFCNT - 1)
   tda.link = priv->tdastart;
  else
   tda.link = addr + sizeof(tda_t);
  tda.link |= 1;
  memcpy_toio(priv->base + addr, &tda, sizeof(tda_t));
  addr += sizeof(tda_t);
  baddr += PKTSIZE;
 }



 priv->rxbufcnt = (dev->mem_end - dev->mem_start - baddr) / (sizeof(rra_t) + sizeof(rda_t) + PKTSIZE);



 priv->rrastart = raddr = priv->txbufstart + (TXBUFCNT * PKTSIZE);
 priv->rdastart = addr = priv->rrastart + (priv->rxbufcnt * sizeof(rra_t));
 priv->rxbufstart = baddr = priv->rdastart + (priv->rxbufcnt * sizeof(rda_t));

 for (z = 0; z < priv->rxbufcnt; z++) {
  rra.startlo = baddr;
  rra.starthi = 0;
  rra.cntlo = PKTSIZE >> 1;
  rra.cnthi = 0;
  memcpy_toio(priv->base + raddr, &rra, sizeof(rra_t));

  rda.status = 0;
  rda.length = 0;
  rda.startlo = 0;
  rda.starthi = 0;
  rda.seqno = 0;
  if (z < priv->rxbufcnt - 1)
   rda.link = addr + sizeof(rda_t);
  else
   rda.link = 1;
  rda.inuse = 1;
  memcpy_toio(priv->base + addr, &rda, sizeof(rda_t));

  baddr += PKTSIZE;
  raddr += sizeof(rra_t);
  addr += sizeof(rda_t);
 }



 priv->nextrxdescr = 0;
 priv->lastrxdescr = priv->rxbufcnt - 1;
 priv->nexttxdescr = 0;
 priv->currtxdescr = 0;
 priv->txusedcnt = 0;
 memset(priv->txused, 0, sizeof(priv->txused));
}
