
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct spider_pic {int dummy; } ;
struct TYPE_4__ {TYPE_1__* host; } ;
struct TYPE_3__ {struct spider_pic* host_data; } ;


 TYPE_2__* irq_map ;

__attribute__((used)) static struct spider_pic *spider_virq_to_pic(unsigned int virq)
{
 return irq_map[virq].host->host_data;
}
