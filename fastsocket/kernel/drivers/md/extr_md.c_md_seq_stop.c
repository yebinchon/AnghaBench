
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct mddev {int dummy; } ;


 int mddev_put (struct mddev*) ;

__attribute__((used)) static void md_seq_stop(struct seq_file *seq, void *v)
{
 struct mddev *mddev = v;

 if (mddev && v != (void*)1 && v != (void*)2)
  mddev_put(mddev);
}
