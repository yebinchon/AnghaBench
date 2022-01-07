
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sn_hwperf_object_info {int dummy; } ;
struct seq_file {struct sn_hwperf_object_info* private; } ;
struct inode {int dummy; } ;
struct file {struct seq_file* private_data; } ;


 int seq_open (struct file*,int *) ;
 int sn_hwperf_enum_objects (int*,struct sn_hwperf_object_info**) ;
 int sn_topology_seq_ops ;

int sn_topology_open(struct inode *inode, struct file *file)
{
 int e;
 struct seq_file *seq;
 struct sn_hwperf_object_info *objbuf;
 int nobj;

 if ((e = sn_hwperf_enum_objects(&nobj, &objbuf)) == 0) {
  e = seq_open(file, &sn_topology_seq_ops);
  seq = file->private_data;
  seq->private = objbuf;
 }

 return e;
}
