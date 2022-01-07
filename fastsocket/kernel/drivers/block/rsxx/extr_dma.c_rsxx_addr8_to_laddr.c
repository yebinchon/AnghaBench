
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long long u64 ;
struct TYPE_2__ {unsigned long long upper_shift; unsigned long long upper_mask; int lower_mask; } ;
struct rsxx_cardinfo {TYPE_1__ _stripe; } ;
typedef unsigned long long addr8 ;


 int RSXX_HW_BLK_SIZE ;
 int do_div (unsigned long long,int ) ;

__attribute__((used)) static unsigned int rsxx_addr8_to_laddr(u64 addr8, struct rsxx_cardinfo *card)
{
 unsigned long long tgt_addr8;

 tgt_addr8 = ((addr8 >> card->_stripe.upper_shift) &
        card->_stripe.upper_mask) |
      ((addr8) & card->_stripe.lower_mask);
 do_div(tgt_addr8, RSXX_HW_BLK_SIZE);
 return tgt_addr8;
}
