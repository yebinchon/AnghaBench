
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_filedata {int rec_cpu_num; } ;
struct inode {int dummy; } ;
struct file {scalar_t__ private_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ kzalloc (int,int ) ;

__attribute__((used)) static int qib_open(struct inode *in, struct file *fp)
{

 fp->private_data = kzalloc(sizeof(struct qib_filedata), GFP_KERNEL);
 if (fp->private_data)
  ((struct qib_filedata *)fp->private_data)->rec_cpu_num = -1;
 return fp->private_data ? 0 : -ENOMEM;
}
