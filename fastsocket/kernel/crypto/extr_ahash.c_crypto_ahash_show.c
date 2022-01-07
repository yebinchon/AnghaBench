
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct crypto_alg {int cra_flags; char* cra_blocksize; } ;
struct TYPE_2__ {char* digestsize; } ;


 int CRYPTO_ALG_ASYNC ;
 TYPE_1__* __crypto_hash_alg_common (struct crypto_alg*) ;
 int seq_printf (struct seq_file*,char*,...) ;

__attribute__((used)) static void crypto_ahash_show(struct seq_file *m, struct crypto_alg *alg)
{
 seq_printf(m, "type         : ahash\n");
 seq_printf(m, "async        : %s\n", alg->cra_flags & CRYPTO_ALG_ASYNC ?
          "yes" : "no");
 seq_printf(m, "blocksize    : %u\n", alg->cra_blocksize);
 seq_printf(m, "digestsize   : %u\n",
     __crypto_hash_alg_common(alg)->digestsize);
}
