
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef int loff_t ;


 int crypto_alg_list ;
 void* seq_list_next (void*,int *,int *) ;

__attribute__((used)) static void *c_next(struct seq_file *m, void *p, loff_t *pos)
{
 return seq_list_next(p, &crypto_alg_list, pos);
}
