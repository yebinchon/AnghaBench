
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct TYPE_2__ {unsigned long buf_size; } ;
typedef TYPE_1__ pfm_default_smpl_arg_t ;



__attribute__((used)) static int
default_get_size(struct task_struct *task, unsigned int flags, int cpu, void *data, unsigned long *size)
{
 pfm_default_smpl_arg_t *arg = (pfm_default_smpl_arg_t *)data;




 *size = arg->buf_size;

 return 0;
}
