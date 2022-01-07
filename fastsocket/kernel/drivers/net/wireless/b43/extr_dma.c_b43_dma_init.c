
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct b43_dma {int parity; void* rx_ring; void* tx_ring_mcast; void* tx_ring_AC_VO; void* tx_ring_AC_VI; void* tx_ring_AC_BE; void* tx_ring_AC_BK; int translation_in_low; int translation; } ;
struct b43_wldev {int wl; TYPE_1__* dev; struct b43_dma dma; } ;
typedef enum b43_dmatype { ____Placeholder_b43_dmatype } b43_dmatype ;
struct TYPE_2__ {int bus_type; int core_rev; int sdev; int bdev; } ;




 int B43_WARN_ON (int) ;
 int ENOMEM ;
 int b43_dma_set_mask (struct b43_wldev*,int ) ;
 int b43_dma_translation_in_low_word (struct b43_wldev*,int) ;
 void* b43_setup_dmaring (struct b43_wldev*,int,int,int) ;
 int b43dbg (int ,char*,unsigned int) ;
 int bcma_core_dma_translation (int ) ;
 int destroy_ring (struct b43_dma*,int ) ;
 int dma_mask_to_engine_type (int ) ;
 int ssb_dma_translation (int ) ;
 int supported_dma_mask (struct b43_wldev*) ;
 int tx_ring_AC_BE ;
 int tx_ring_AC_BK ;
 int tx_ring_AC_VI ;
 int tx_ring_AC_VO ;
 int tx_ring_mcast ;

int b43_dma_init(struct b43_wldev *dev)
{
 struct b43_dma *dma = &dev->dma;
 int err;
 u64 dmamask;
 enum b43_dmatype type;

 dmamask = supported_dma_mask(dev);
 type = dma_mask_to_engine_type(dmamask);
 err = b43_dma_set_mask(dev, dmamask);
 if (err)
  return err;

 switch (dev->dev->bus_type) {
 }
 dma->translation_in_low = b43_dma_translation_in_low_word(dev, type);

 dma->parity = 1;






 err = -ENOMEM;

 dma->tx_ring_AC_BK = b43_setup_dmaring(dev, 0, 1, type);
 if (!dma->tx_ring_AC_BK)
  goto out;

 dma->tx_ring_AC_BE = b43_setup_dmaring(dev, 1, 1, type);
 if (!dma->tx_ring_AC_BE)
  goto err_destroy_bk;

 dma->tx_ring_AC_VI = b43_setup_dmaring(dev, 2, 1, type);
 if (!dma->tx_ring_AC_VI)
  goto err_destroy_be;

 dma->tx_ring_AC_VO = b43_setup_dmaring(dev, 3, 1, type);
 if (!dma->tx_ring_AC_VO)
  goto err_destroy_vi;

 dma->tx_ring_mcast = b43_setup_dmaring(dev, 4, 1, type);
 if (!dma->tx_ring_mcast)
  goto err_destroy_vo;


 dma->rx_ring = b43_setup_dmaring(dev, 0, 0, type);
 if (!dma->rx_ring)
  goto err_destroy_mcast;


 B43_WARN_ON(dev->dev->core_rev < 5);

 b43dbg(dev->wl, "%u-bit DMA initialized\n",
        (unsigned int)type);
 err = 0;
out:
 return err;

err_destroy_mcast:
 destroy_ring(dma, tx_ring_mcast);
err_destroy_vo:
 destroy_ring(dma, tx_ring_AC_VO);
err_destroy_vi:
 destroy_ring(dma, tx_ring_AC_VI);
err_destroy_be:
 destroy_ring(dma, tx_ring_AC_BE);
err_destroy_bk:
 destroy_ring(dma, tx_ring_AC_BK);
 return err;
}
