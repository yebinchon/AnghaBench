
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zatm_vcc {int tx_chan; int shaper; } ;
struct zatm_dev {struct atm_vcc** tx_map; int lock; } ;
struct atm_vcc {int vpi; int vci; int dev; } ;


 int DPRINTK (char*) ;
 int VC_SIZE ;
 struct zatm_dev* ZATM_DEV (int ) ;
 struct zatm_vcc* ZATM_VCC (struct atm_vcc*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int uPD98401_TXVC_L ;
 int uPD98401_TXVC_SHP_SHIFT ;
 int uPD98401_TXVC_VPI_SHIFT ;
 int zpokel (struct zatm_dev*,int,int) ;

__attribute__((used)) static int open_tx_second(struct atm_vcc *vcc)
{
 struct zatm_dev *zatm_dev;
 struct zatm_vcc *zatm_vcc;
 unsigned long flags;

 DPRINTK("open_tx_second\n");
 zatm_dev = ZATM_DEV(vcc->dev);
 zatm_vcc = ZATM_VCC(vcc);
 if (!zatm_vcc->tx_chan) return 0;

 spin_lock_irqsave(&zatm_dev->lock, flags);
 zpokel(zatm_dev,0,zatm_vcc->tx_chan*VC_SIZE/4);
 zpokel(zatm_dev,uPD98401_TXVC_L | (zatm_vcc->shaper <<
     uPD98401_TXVC_SHP_SHIFT) | (vcc->vpi << uPD98401_TXVC_VPI_SHIFT) |
     vcc->vci,zatm_vcc->tx_chan*VC_SIZE/4+1);
 zpokel(zatm_dev,0,zatm_vcc->tx_chan*VC_SIZE/4+2);
 spin_unlock_irqrestore(&zatm_dev->lock, flags);
 zatm_dev->tx_map[zatm_vcc->tx_chan] = vcc;
 return 0;
}
