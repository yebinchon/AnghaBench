
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {int dummy; } ;
struct hash_desc {int tfm; } ;


 struct shash_desc** crypto_hash_ctx (int ) ;
 int crypto_shash_final (struct shash_desc*,int *) ;

__attribute__((used)) static int shash_compat_final(struct hash_desc *hdesc, u8 *out)
{
 struct shash_desc **descp = crypto_hash_ctx(hdesc->tfm);

 return crypto_shash_final(*descp, out);
}
