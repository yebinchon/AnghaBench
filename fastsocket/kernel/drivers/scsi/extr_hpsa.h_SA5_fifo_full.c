
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctlr_info {scalar_t__ commands_outstanding; scalar_t__ max_commands; } ;



__attribute__((used)) static unsigned long SA5_fifo_full(struct ctlr_info *h)
{
 if (h->commands_outstanding >= h->max_commands)
  return 1;
 else
  return 0;

}
