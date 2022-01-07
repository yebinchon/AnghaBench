
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hifn_device {int dmareg; int rngtime; int name; } ;


 int HIFN_1_DMA_IER ;
 int HIFN_1_PUB_IEN ;
 int HIFN_1_PUB_RESET ;
 int HIFN_1_RNG_CONFIG ;
 int HIFN_1_RNG_DATA ;
 int HIFN_DMAIER_PUBDONE ;
 int HIFN_PUBIEN_DONE ;
 int HIFN_PUBRST_RESET ;
 int HIFN_RNGCFG_ENA ;
 int dprintk (char*,int ) ;
 int hifn_read_1 (struct hifn_device*,int ) ;
 int hifn_write_1 (struct hifn_device*,int ,int) ;
 int ktime_get () ;
 int mdelay (int) ;

__attribute__((used)) static int hifn_init_pubrng(struct hifn_device *dev)
{
 int i;

 hifn_write_1(dev, HIFN_1_PUB_RESET, hifn_read_1(dev, HIFN_1_PUB_RESET) |
   HIFN_PUBRST_RESET);

 for (i=100; i > 0; --i) {
  mdelay(1);

  if ((hifn_read_1(dev, HIFN_1_PUB_RESET) & HIFN_PUBRST_RESET) == 0)
   break;
 }

 if (!i)
  dprintk("Chip %s: Failed to initialise public key engine.\n",
    dev->name);
 else {
  hifn_write_1(dev, HIFN_1_PUB_IEN, HIFN_PUBIEN_DONE);
  dev->dmareg |= HIFN_DMAIER_PUBDONE;
  hifn_write_1(dev, HIFN_1_DMA_IER, dev->dmareg);

  dprintk("Chip %s: Public key engine has been sucessfully "
    "initialised.\n", dev->name);
 }





 hifn_write_1(dev, HIFN_1_RNG_CONFIG,
   hifn_read_1(dev, HIFN_1_RNG_CONFIG) | HIFN_RNGCFG_ENA);
 dprintk("Chip %s: RNG engine has been successfully initialised.\n",
   dev->name);






 return 0;
}
