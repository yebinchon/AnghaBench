
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef int loff_t ;


 void* sn_topology_start (struct seq_file*,int *) ;

__attribute__((used)) static void *sn_topology_next(struct seq_file *s, void *v, loff_t * pos)
{
 ++*pos;
 return sn_topology_start(s, pos);
}
