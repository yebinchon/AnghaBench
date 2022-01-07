
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u64 ;
struct TYPE_2__ {unsigned int target_shift; unsigned int target_mask; } ;
struct rsxx_cardinfo {TYPE_1__ _stripe; } ;



__attribute__((used)) static unsigned int rsxx_get_dma_tgt(struct rsxx_cardinfo *card, u64 addr8)
{
 unsigned int tgt;

 tgt = (addr8 >> card->_stripe.target_shift) & card->_stripe.target_mask;

 return tgt;
}
