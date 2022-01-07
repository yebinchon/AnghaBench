
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zatm_dev {int chans; int free_shapers; int ubr; scalar_t__ ubr_ref_cnt; int tx_bw; int tx_map; } ;
struct atm_vcc {int dummy; } ;
struct atm_dev {int dummy; } ;


 int ATM_OC3_PCR ;
 int DPRINTK (char*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NR_SHAPERS ;
 struct zatm_dev* ZATM_DEV (struct atm_dev*) ;
 int kmalloc (int,int ) ;
 int uPD98401_PS (int) ;
 int zpokel (struct zatm_dev*,int ,int ) ;

__attribute__((used)) static int start_tx(struct atm_dev *dev)
{
 struct zatm_dev *zatm_dev;
 int i;

 DPRINTK("start_tx\n");
 zatm_dev = ZATM_DEV(dev);
 zatm_dev->tx_map = kmalloc(sizeof(struct atm_vcc *)*
     zatm_dev->chans,GFP_KERNEL);
 if (!zatm_dev->tx_map) return -ENOMEM;
 zatm_dev->tx_bw = ATM_OC3_PCR;
 zatm_dev->free_shapers = (1 << NR_SHAPERS)-1;
 zatm_dev->ubr = -1;
 zatm_dev->ubr_ref_cnt = 0;

 for (i = 0; i < NR_SHAPERS; i++) zpokel(zatm_dev,0,uPD98401_PS(i));
 return 0;
}
