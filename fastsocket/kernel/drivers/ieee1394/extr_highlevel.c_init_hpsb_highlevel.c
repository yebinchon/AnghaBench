
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_4__ {int start; int end; int host_list; int * op; int hl_list; } ;
struct TYPE_3__ {int host_list; scalar_t__ end; scalar_t__ start; int * op; int hl_list; } ;
struct hpsb_host {int addr_space; TYPE_2__ dummy_max_addr; TYPE_1__ dummy_zero_addr; } ;


 int INIT_LIST_HEAD (int *) ;
 int dummy_ops ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static void init_hpsb_highlevel(struct hpsb_host *host)
{
 INIT_LIST_HEAD(&host->dummy_zero_addr.host_list);
 INIT_LIST_HEAD(&host->dummy_zero_addr.hl_list);
 INIT_LIST_HEAD(&host->dummy_max_addr.host_list);
 INIT_LIST_HEAD(&host->dummy_max_addr.hl_list);

 host->dummy_zero_addr.op = host->dummy_max_addr.op = &dummy_ops;

 host->dummy_zero_addr.start = host->dummy_zero_addr.end = 0;
 host->dummy_max_addr.start = host->dummy_max_addr.end = ((u64) 1) << 48;

 list_add_tail(&host->dummy_zero_addr.host_list, &host->addr_space);
 list_add_tail(&host->dummy_max_addr.host_list, &host->addr_space);
}
