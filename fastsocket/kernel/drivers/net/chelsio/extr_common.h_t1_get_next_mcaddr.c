
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct t1_rx_mode {TYPE_2__* list; TYPE_1__* dev; int idx; } ;
struct TYPE_4__ {struct TYPE_4__* next; int * dmi_addr; } ;
struct TYPE_3__ {scalar_t__ mc_count; } ;



__attribute__((used)) static inline u8 *t1_get_next_mcaddr(struct t1_rx_mode *rm)
{
 u8 *addr = ((void*)0);

 if (rm->idx++ < rm->dev->mc_count) {
  addr = rm->list->dmi_addr;
  rm->list = rm->list->next;
 }
 return addr;
}
