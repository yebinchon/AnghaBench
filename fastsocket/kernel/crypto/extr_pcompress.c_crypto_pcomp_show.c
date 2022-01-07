
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct crypto_alg {int dummy; } ;


 int seq_printf (struct seq_file*,char*) ;

__attribute__((used)) static void crypto_pcomp_show(struct seq_file *m, struct crypto_alg *alg)
{
 seq_printf(m, "type         : pcomp\n");
}
