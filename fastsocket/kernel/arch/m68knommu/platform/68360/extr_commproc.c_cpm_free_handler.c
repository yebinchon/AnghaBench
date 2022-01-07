
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * dev_id; int * handler; } ;
struct TYPE_3__ {int intr_cimr; } ;


 TYPE_2__* cpm_vecs ;
 TYPE_1__* pquicc ;

void
cpm_free_handler(int vec)
{
 cpm_vecs[vec].handler = ((void*)0);
 cpm_vecs[vec].dev_id = ((void*)0);

 pquicc->intr_cimr &= ~(1 << vec);
}
