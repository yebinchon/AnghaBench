
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int gate_desc ;
struct TYPE_2__ {int (* write_idt_entry ) (int *,int,int ,int ) ;} ;


 int stub1 (int *,int,int ,int ) ;
 TYPE_1__ vmi_ops ;

__attribute__((used)) static void vmi_write_idt_entry(gate_desc *dt, int entry, const gate_desc *g)
{
 u32 *idt_entry = (u32 *)g;
 vmi_ops.write_idt_entry(dt, entry, idt_entry[0], idt_entry[1]);
}
