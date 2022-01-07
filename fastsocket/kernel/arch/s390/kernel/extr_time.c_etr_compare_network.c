
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ net_id; } ;
struct etr_aib {TYPE_1__ edf1; } ;



__attribute__((used)) static int etr_compare_network(struct etr_aib *aib1, struct etr_aib *aib2)
{

 return aib1->edf1.net_id == aib2->edf1.net_id;
}
