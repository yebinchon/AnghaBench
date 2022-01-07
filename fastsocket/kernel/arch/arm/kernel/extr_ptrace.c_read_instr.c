
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int u32 ;
typedef int u16 ;
struct task_struct {int dummy; } ;


 int EIO ;
 int access_process_vm (struct task_struct*,unsigned long,int *,int,int ) ;

__attribute__((used)) static inline int
read_instr(struct task_struct *task, unsigned long addr, u32 *res)
{
 int ret;

 if (addr & 1) {
  u16 val;
  ret = access_process_vm(task, addr & ~1, &val, sizeof(val), 0);
  ret = ret == sizeof(val) ? 0 : -EIO;
  *res = val;
 } else {
  u32 val;
  ret = access_process_vm(task, addr & ~3, &val, sizeof(val), 0);
  ret = ret == sizeof(val) ? 0 : -EIO;
  *res = val;
 }
 return ret;
}
