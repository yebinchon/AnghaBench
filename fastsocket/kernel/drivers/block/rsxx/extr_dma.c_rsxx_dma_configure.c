
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int latency; int count; int mode; } ;
struct TYPE_5__ {int stripe_size; TYPE_1__ intr_coal; } ;
struct TYPE_6__ {TYPE_2__ data; } ;
struct rsxx_cardinfo {TYPE_3__ config; scalar_t__ regmap; } ;


 scalar_t__ INTR_COAL ;
 int dma_intr_coal_val (int ,int ,int ) ;
 int iowrite32 (int ,scalar_t__) ;
 int rsxx_dma_stripe_setup (struct rsxx_cardinfo*,int ) ;

int rsxx_dma_configure(struct rsxx_cardinfo *card)
{
 u32 intr_coal;

 intr_coal = dma_intr_coal_val(card->config.data.intr_coal.mode,
          card->config.data.intr_coal.count,
          card->config.data.intr_coal.latency);
 iowrite32(intr_coal, card->regmap + INTR_COAL);

 return rsxx_dma_stripe_setup(card, card->config.data.stripe_size);
}
