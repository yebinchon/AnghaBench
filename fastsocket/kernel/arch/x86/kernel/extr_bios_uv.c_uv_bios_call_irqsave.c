
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int s64 ;
typedef enum uv_bios_cmd { ____Placeholder_uv_bios_cmd } uv_bios_cmd ;


 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int uv_bios_call (int,int ,int ,int ,int ,int ) ;

s64 uv_bios_call_irqsave(enum uv_bios_cmd which, u64 a1, u64 a2, u64 a3,
     u64 a4, u64 a5)
{
 unsigned long bios_flags;
 s64 ret;

 local_irq_save(bios_flags);
 ret = uv_bios_call(which, a1, a2, a3, a4, a5);
 local_irq_restore(bios_flags);

 return ret;
}
