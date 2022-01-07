
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int walk_pgd_level (struct seq_file*) ;

__attribute__((used)) static int ptdump_show(struct seq_file *m, void *v)
{
 walk_pgd_level(m);
 return 0;
}
