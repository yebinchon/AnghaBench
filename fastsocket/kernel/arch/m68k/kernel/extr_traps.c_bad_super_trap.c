
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int vector; int format; int pc; } ;
struct TYPE_4__ {unsigned short ssw; int baddr; int daddr; } ;
struct TYPE_5__ {TYPE_1__ fmtb; } ;
struct frame {TYPE_3__ ptregs; TYPE_2__ un; } ;


 int ARRAY_SIZE (int *) ;
 scalar_t__ CPU_IS_020_OR_030 ;
 unsigned short DF ;
 unsigned short DFC ;
 unsigned short RB ;
 unsigned short RC ;
 unsigned short RW ;
 int VEC_ADDRERR ;
 int console_verbose () ;
 int current ;
 int die_if_kernel (char*,TYPE_3__*,int ) ;
 int printk (char*,...) ;
 int * space_names ;
 int task_pid_nr (int ) ;
 int * vec_names ;

void bad_super_trap (struct frame *fp)
{
 console_verbose();
 if (fp->ptregs.vector < 4 * ARRAY_SIZE(vec_names))
  printk ("*** %s ***   FORMAT=%X\n",
   vec_names[(fp->ptregs.vector) >> 2],
   fp->ptregs.format);
 else
  printk ("*** Exception %d ***   FORMAT=%X\n",
   (fp->ptregs.vector) >> 2,
   fp->ptregs.format);
 if (fp->ptregs.vector >> 2 == VEC_ADDRERR && CPU_IS_020_OR_030) {
  unsigned short ssw = fp->un.fmtb.ssw;

  printk ("SSW=%#06x  ", ssw);

  if (ssw & RC)
   printk ("Pipe stage C instruction fault at %#010lx\n",
    (fp->ptregs.format) == 0xA ?
    fp->ptregs.pc + 2 : fp->un.fmtb.baddr - 2);
  if (ssw & RB)
   printk ("Pipe stage B instruction fault at %#010lx\n",
    (fp->ptregs.format) == 0xA ?
    fp->ptregs.pc + 4 : fp->un.fmtb.baddr);
  if (ssw & DF)
   printk ("Data %s fault at %#010lx in %s (pc=%#lx)\n",
    ssw & RW ? "read" : "write",
    fp->un.fmtb.daddr, space_names[ssw & DFC],
    fp->ptregs.pc);
 }
 printk ("Current process id is %d\n", task_pid_nr(current));
 die_if_kernel("BAD KERNEL TRAP", &fp->ptregs, 0);
}
