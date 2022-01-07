
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long u32 ;
struct TYPE_2__ {int sp; unsigned long ip; } ;
struct task_struct {TYPE_1__ thread; } ;


 size_t GDB_AX ;
 size_t GDB_BP ;
 size_t GDB_BX ;
 size_t GDB_CS ;
 size_t GDB_CX ;
 size_t GDB_DI ;
 size_t GDB_DS ;
 size_t GDB_DX ;
 size_t GDB_ES ;
 size_t GDB_FS ;
 size_t GDB_GS ;
 size_t GDB_PC ;
 size_t GDB_PS ;
 size_t GDB_R10 ;
 size_t GDB_R11 ;
 size_t GDB_R12 ;
 size_t GDB_R13 ;
 size_t GDB_R14 ;
 size_t GDB_R15 ;
 size_t GDB_R8 ;
 size_t GDB_R9 ;
 size_t GDB_SI ;
 size_t GDB_SP ;
 size_t GDB_SS ;
 void* __KERNEL_CS ;
 void* __KERNEL_DS ;

void sleeping_thread_to_gdb_regs(unsigned long *gdb_regs, struct task_struct *p)
{

 u32 *gdb_regs32 = (u32 *)gdb_regs;

 gdb_regs[GDB_AX] = 0;
 gdb_regs[GDB_BX] = 0;
 gdb_regs[GDB_CX] = 0;
 gdb_regs[GDB_DX] = 0;
 gdb_regs[GDB_SI] = 0;
 gdb_regs[GDB_DI] = 0;
 gdb_regs[GDB_BP] = *(unsigned long *)p->thread.sp;
 gdb_regs32[GDB_PS] = *(unsigned long *)(p->thread.sp + 8);
 gdb_regs32[GDB_CS] = __KERNEL_CS;
 gdb_regs32[GDB_SS] = __KERNEL_DS;
 gdb_regs[GDB_PC] = 0;
 gdb_regs[GDB_R8] = 0;
 gdb_regs[GDB_R9] = 0;
 gdb_regs[GDB_R10] = 0;
 gdb_regs[GDB_R11] = 0;
 gdb_regs[GDB_R12] = 0;
 gdb_regs[GDB_R13] = 0;
 gdb_regs[GDB_R14] = 0;
 gdb_regs[GDB_R15] = 0;

 gdb_regs[GDB_SP] = p->thread.sp;
}
