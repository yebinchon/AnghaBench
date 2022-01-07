
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct spider_net_card {scalar_t__ regs; } ;


 int out_be32 (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void
spider_net_write_reg(struct spider_net_card *card, u32 reg, u32 value)
{




 out_be32(card->regs + reg, value);
}
