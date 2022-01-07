
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shash_alg {int digestsize; } ;
struct seq_file {int dummy; } ;
struct crypto_alg {int cra_blocksize; } ;


 struct shash_alg* __crypto_shash_alg (struct crypto_alg*) ;
 int seq_printf (struct seq_file*,char*,...) ;

__attribute__((used)) static void crypto_shash_show(struct seq_file *m, struct crypto_alg *alg)
{
 struct shash_alg *salg = __crypto_shash_alg(alg);

 seq_printf(m, "type         : shash\n");
 seq_printf(m, "blocksize    : %u\n", alg->cra_blocksize);
 seq_printf(m, "digestsize   : %u\n", salg->digestsize);
}
