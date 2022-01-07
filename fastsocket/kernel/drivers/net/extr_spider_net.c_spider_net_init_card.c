
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spider_net_card {int dummy; } ;


 int SPIDER_NET_CKRCTRL ;
 int SPIDER_NET_CKRCTRL_RUN_VALUE ;
 int SPIDER_NET_CKRCTRL_STOP_VALUE ;
 int SPIDER_NET_GMACOPEMD ;
 int spider_net_disable_interrupts (struct spider_net_card*) ;
 int spider_net_read_reg (struct spider_net_card*,int ) ;
 int spider_net_write_reg (struct spider_net_card*,int ,int) ;

__attribute__((used)) static void
spider_net_init_card(struct spider_net_card *card)
{
 spider_net_write_reg(card, SPIDER_NET_CKRCTRL,
        SPIDER_NET_CKRCTRL_STOP_VALUE);

 spider_net_write_reg(card, SPIDER_NET_CKRCTRL,
        SPIDER_NET_CKRCTRL_RUN_VALUE);


 spider_net_write_reg(card, SPIDER_NET_GMACOPEMD,
  spider_net_read_reg(card, SPIDER_NET_GMACOPEMD) | 0x4);

 spider_net_disable_interrupts(card);
}
