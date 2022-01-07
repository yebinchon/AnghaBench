
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct desc_struct {int dummy; } ;
struct TYPE_2__ {int (* set_tr ) (int) ;} ;


 int GDT_ENTRY_TSS ;
 int stub1 (int) ;
 TYPE_1__ vmi_ops ;

__attribute__((used)) static void vmi_set_tr(void)
{
 vmi_ops.set_tr(GDT_ENTRY_TSS*sizeof(struct desc_struct));
}
