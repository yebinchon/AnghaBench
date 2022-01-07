
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct TYPE_3__ {int hdr_cur_offs; unsigned long hdr_overflows; unsigned long hdr_count; int hdr_version; int hdr_buf_size; } ;
typedef TYPE_1__ pfm_default_smpl_hdr_t ;
struct TYPE_4__ {int buf_size; } ;
typedef TYPE_2__ pfm_default_smpl_arg_t ;


 int DPRINT (char*) ;
 int PFM_DEFAULT_SMPL_VERSION ;
 int task_pid_nr (struct task_struct*) ;

__attribute__((used)) static int
default_init(struct task_struct *task, void *buf, unsigned int flags, int cpu, void *data)
{
 pfm_default_smpl_hdr_t *hdr;
 pfm_default_smpl_arg_t *arg = (pfm_default_smpl_arg_t *)data;

 hdr = (pfm_default_smpl_hdr_t *)buf;

 hdr->hdr_version = PFM_DEFAULT_SMPL_VERSION;
 hdr->hdr_buf_size = arg->buf_size;
 hdr->hdr_cur_offs = sizeof(*hdr);
 hdr->hdr_overflows = 0UL;
 hdr->hdr_count = 0UL;

 DPRINT(("[%d] buffer=%p buf_size=%lu hdr_size=%lu hdr_version=%u cur_offs=%lu\n",
  task_pid_nr(task),
  buf,
  hdr->hdr_buf_size,
  sizeof(*hdr),
  hdr->hdr_version,
  hdr->hdr_cur_offs));

 return 0;
}
