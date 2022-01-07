
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shash_desc {int dummy; } ;
struct ghash_desc_ctx {int dummy; } ;


 int memset (struct ghash_desc_ctx*,int ,int) ;
 struct ghash_desc_ctx* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int ghash_init(struct shash_desc *desc)
{
 struct ghash_desc_ctx *dctx = shash_desc_ctx(desc);

 memset(dctx, 0, sizeof(*dctx));

 return 0;
}
