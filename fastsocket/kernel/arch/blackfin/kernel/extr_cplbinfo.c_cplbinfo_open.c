
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct seq_file {struct cplbinfo_data* private; } ;
struct proc_dir_entry {scalar_t__ data; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {TYPE_1__* dentry; } ;
struct file {struct seq_file* private_data; TYPE_2__ f_path; } ;
struct cplbinfo_data {char cplb_type; scalar_t__ pos; } ;
struct TYPE_3__ {int d_inode; } ;


 unsigned int CPLBINFO_DCPLB_FLAG ;
 int ENODEV ;
 struct proc_dir_entry* PDE (int ) ;
 int cplbinfo_seq_init (struct cplbinfo_data*,unsigned int) ;
 int cplbinfo_sops ;
 int cpu_online (unsigned int) ;
 int seq_open_private (struct file*,int *,int) ;

__attribute__((used)) static int cplbinfo_open(struct inode *inode, struct file *file)
{
 struct proc_dir_entry *pde = PDE(file->f_path.dentry->d_inode);
 char cplb_type;
 unsigned int cpu;
 int ret;
 struct seq_file *m;
 struct cplbinfo_data *cdata;

 cpu = (unsigned int)pde->data;
 cplb_type = cpu & CPLBINFO_DCPLB_FLAG ? 'D' : 'I';
 cpu &= ~CPLBINFO_DCPLB_FLAG;

 if (!cpu_online(cpu))
  return -ENODEV;

 ret = seq_open_private(file, &cplbinfo_sops, sizeof(*cdata));
 if (ret)
  return ret;
 m = file->private_data;
 cdata = m->private;

 cdata->pos = 0;
 cdata->cplb_type = cplb_type;
 cplbinfo_seq_init(cdata, cpu);

 return 0;
}
