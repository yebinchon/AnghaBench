
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct TYPE_2__ {int digestsize; } ;
struct crypto_alg {TYPE_1__ cra_hash; int cra_blocksize; } ;


 int seq_printf (struct seq_file*,char*,...) ;

__attribute__((used)) static void crypto_hash_show(struct seq_file *m, struct crypto_alg *alg)
{
 seq_printf(m, "type         : hash\n");
 seq_printf(m, "blocksize    : %u\n", alg->cra_blocksize);
 seq_printf(m, "digestsize   : %u\n", alg->cra_hash.digestsize);
}
