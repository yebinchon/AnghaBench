
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct desc_struct {int dummy; } ;
struct TYPE_2__ {int (* write_gdt_entry ) (struct desc_struct*,int,int ,int ) ;} ;


 int stub1 (struct desc_struct*,int,int ,int ) ;
 TYPE_1__ vmi_ops ;

__attribute__((used)) static void vmi_write_gdt_entry(struct desc_struct *dt, int entry,
    const void *desc, int type)
{
 u32 *gdt_entry = (u32 *)desc;
 vmi_ops.write_gdt_entry(dt, entry, gdt_entry[0], gdt_entry[1]);
}
