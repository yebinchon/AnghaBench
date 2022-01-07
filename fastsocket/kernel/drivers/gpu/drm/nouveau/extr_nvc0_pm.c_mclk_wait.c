
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nouveau_mem_exec_func {int dummy; } ;


 int udelay (int) ;

__attribute__((used)) static void
mclk_wait(struct nouveau_mem_exec_func *exec, u32 nsec)
{
 udelay((nsec + 500) / 1000);
}
