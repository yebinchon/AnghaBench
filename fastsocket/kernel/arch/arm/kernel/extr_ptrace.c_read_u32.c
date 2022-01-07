
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct task_struct {int dummy; } ;


 int EIO ;
 int access_process_vm (struct task_struct*,unsigned long,int *,int,int ) ;

__attribute__((used)) static inline int
read_u32(struct task_struct *task, unsigned long addr, u32 *res)
{
 int ret;

 ret = access_process_vm(task, addr, res, sizeof(*res), 0);

 return ret == sizeof(*res) ? 0 : -EIO;
}
