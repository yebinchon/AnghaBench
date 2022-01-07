
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int commands_outstanding; scalar_t__ vaddr; } ;
typedef TYPE_1__ ctlr_info_t ;


 unsigned long FIFO_EMPTY ;
 scalar_t__ SA5_REPLY_PORT_OFFSET ;
 int printk (char*,...) ;
 unsigned long readl (scalar_t__) ;

__attribute__((used)) static unsigned long SA5_completed(ctlr_info_t *h)
{
 unsigned long register_value
  = readl(h->vaddr + SA5_REPLY_PORT_OFFSET);
 if(register_value != FIFO_EMPTY)
 {
  h->commands_outstanding--;



 }






 return ( register_value);

}
