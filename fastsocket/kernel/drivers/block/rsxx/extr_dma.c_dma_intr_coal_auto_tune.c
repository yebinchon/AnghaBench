
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {scalar_t__ mode; int latency; } ;
struct TYPE_9__ {TYPE_3__ intr_coal; } ;
struct TYPE_10__ {TYPE_4__ data; } ;
struct rsxx_cardinfo {int n_targets; scalar_t__ regmap; TYPE_5__ config; TYPE_2__* ctrl; int eeh_state; } ;
struct TYPE_6__ {int hw_q_depth; } ;
struct TYPE_7__ {TYPE_1__ stats; } ;


 scalar_t__ INTR_COAL ;
 scalar_t__ RSXX_INTR_COAL_AUTO_TUNE ;
 scalar_t__ atomic_read (int *) ;
 int dma_intr_coal_val (scalar_t__,int,int ) ;
 int iowrite32 (int,scalar_t__) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void dma_intr_coal_auto_tune(struct rsxx_cardinfo *card)
{
 int i;
 u32 q_depth = 0;
 u32 intr_coal;

 if (card->config.data.intr_coal.mode != RSXX_INTR_COAL_AUTO_TUNE ||
     unlikely(card->eeh_state))
  return;

 for (i = 0; i < card->n_targets; i++)
  q_depth += atomic_read(&card->ctrl[i].stats.hw_q_depth);

 intr_coal = dma_intr_coal_val(card->config.data.intr_coal.mode,
          q_depth / 2,
          card->config.data.intr_coal.latency);
 iowrite32(intr_coal, card->regmap + INTR_COAL);
}
