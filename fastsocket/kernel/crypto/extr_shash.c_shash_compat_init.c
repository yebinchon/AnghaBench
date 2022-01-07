
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shash_desc {int flags; } ;
struct hash_desc {int flags; int tfm; } ;


 struct shash_desc** crypto_hash_ctx (int ) ;
 int crypto_shash_init (struct shash_desc*) ;

__attribute__((used)) static int shash_compat_init(struct hash_desc *hdesc)
{
 struct shash_desc **descp = crypto_hash_ctx(hdesc->tfm);
 struct shash_desc *desc = *descp;

 desc->flags = hdesc->flags;

 return crypto_shash_init(desc);
}
