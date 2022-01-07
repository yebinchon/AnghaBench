
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int s64 ;
typedef enum uv_bios_cmd { ____Placeholder_uv_bios_cmd } uv_bios_cmd ;


 int preempt_disable () ;
 int preempt_enable () ;
 int uv_bios_call (int,int ,int ,int ,int ,int ) ;

s64 uv_bios_call_reentrant(enum uv_bios_cmd which, u64 a1, u64 a2, u64 a3,
     u64 a4, u64 a5)
{
 s64 ret;

 preempt_disable();
 ret = uv_bios_call(which, a1, a2, a3, a4, a5);
 preempt_enable();

 return ret;
}
