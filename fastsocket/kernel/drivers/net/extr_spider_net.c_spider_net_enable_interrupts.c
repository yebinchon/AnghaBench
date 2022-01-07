
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spider_net_card {int dummy; } ;


 int SPIDER_NET_GHIINT0MSK ;
 int SPIDER_NET_GHIINT1MSK ;
 int SPIDER_NET_GHIINT2MSK ;
 int SPIDER_NET_INT0_MASK_VALUE ;
 int SPIDER_NET_INT1_MASK_VALUE ;
 int SPIDER_NET_INT2_MASK_VALUE ;
 int spider_net_write_reg (struct spider_net_card*,int ,int ) ;

__attribute__((used)) static void
spider_net_enable_interrupts(struct spider_net_card *card)
{
 spider_net_write_reg(card, SPIDER_NET_GHIINT0MSK,
        SPIDER_NET_INT0_MASK_VALUE);
 spider_net_write_reg(card, SPIDER_NET_GHIINT1MSK,
        SPIDER_NET_INT1_MASK_VALUE);
 spider_net_write_reg(card, SPIDER_NET_GHIINT2MSK,
        SPIDER_NET_INT2_MASK_VALUE);
}
