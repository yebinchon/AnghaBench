
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef int loff_t ;


 int crypto_alg_list ;
 int crypto_alg_sem ;
 int down_read (int *) ;
 void* seq_list_start (int *,int ) ;

__attribute__((used)) static void *c_start(struct seq_file *m, loff_t *pos)
{
 down_read(&crypto_alg_sem);
 return seq_list_start(&crypto_alg_list, *pos);
}
