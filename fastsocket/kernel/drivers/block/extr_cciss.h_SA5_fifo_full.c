
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ commands_outstanding; scalar_t__ max_commands; } ;
typedef TYPE_1__ ctlr_info_t ;



__attribute__((used)) static unsigned long SA5_fifo_full(ctlr_info_t *h)
{
 if( h->commands_outstanding >= h->max_commands)
  return(1);
 else
  return(0);

}
