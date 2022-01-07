
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct s_fpmc* table; } ;
struct TYPE_5__ {TYPE_1__ mc; scalar_t__ os_slots_used; } ;
struct TYPE_6__ {TYPE_2__ fp; } ;
struct s_smc {TYPE_3__ hw; } ;
struct s_fpmc {scalar_t__ n; int perm; } ;


 int FPMAX_MULTICAST ;

void mac_clear_multicast(struct s_smc *smc)
{
 struct s_fpmc *tb ;
 int i ;

 smc->hw.fp.os_slots_used = 0 ;

 for (i = 0, tb = smc->hw.fp.mc.table ; i < FPMAX_MULTICAST ; i++, tb++){
  if (!tb->perm) {
   tb->n = 0 ;
  }
 }
}
