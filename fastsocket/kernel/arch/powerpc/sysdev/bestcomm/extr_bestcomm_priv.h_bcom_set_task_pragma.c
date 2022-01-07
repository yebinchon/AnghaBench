
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {TYPE_1__* tdt; } ;
struct TYPE_3__ {int fdt; } ;


 TYPE_2__* bcom_eng ;

__attribute__((used)) static inline void
bcom_set_task_pragma(int task, int pragma)
{
 u32 *fdt = &bcom_eng->tdt[task].fdt;
 *fdt = (*fdt & ~0xff) | pragma;
}
