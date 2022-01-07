
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {scalar_t__ private; } ;
struct i2o_device {int device; } ;


 int dev_name (int *) ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int i2o_seq_show_dev_name(struct seq_file *seq, void *v)
{
 struct i2o_device *d = (struct i2o_device *)seq->private;

 seq_printf(seq, "%s\n", dev_name(&d->device));

 return 0;
}
