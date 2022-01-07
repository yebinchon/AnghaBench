
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ vaddr; } ;
typedef TYPE_1__ ctlr_info_t ;


 scalar_t__ S42XX_REPLY_PORT_OFFSET ;
 long readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static unsigned long smart4_completed(ctlr_info_t *h)
{
 long register_value
  = readl(h->vaddr + S42XX_REPLY_PORT_OFFSET);


 if( register_value == 0xffffffff)
  return 0;



 writel(0, h->vaddr + S42XX_REPLY_PORT_OFFSET);

 return ((unsigned long) register_value);
}
