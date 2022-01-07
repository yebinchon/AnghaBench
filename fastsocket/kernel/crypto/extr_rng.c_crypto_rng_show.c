
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct TYPE_2__ {int seedsize; } ;
struct crypto_alg {TYPE_1__ cra_rng; } ;


 int seq_printf (struct seq_file*,char*,...) ;

__attribute__((used)) static void crypto_rng_show(struct seq_file *m, struct crypto_alg *alg)
{
 seq_printf(m, "type         : rng\n");
 seq_printf(m, "seedsize     : %u\n", alg->cra_rng.seedsize);
}
