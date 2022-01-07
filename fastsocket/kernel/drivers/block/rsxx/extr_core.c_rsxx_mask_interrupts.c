
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsxx_cardinfo {scalar_t__ ier_mask; scalar_t__ isr_mask; } ;



__attribute__((used)) static void rsxx_mask_interrupts(struct rsxx_cardinfo *card)
{
 card->isr_mask = 0;
 card->ier_mask = 0;
}
