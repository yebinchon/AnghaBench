
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtattr {int dummy; } ;
struct crypto_template {int dummy; } ;
struct crypto_attr_type {int type; int mask; } ;





 int CRYPTO_ALG_TYPE_MASK ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct crypto_attr_type*) ;
 int PTR_ERR (struct crypto_attr_type*) ;
 int cryptd_create_aead (struct crypto_template*,struct rtattr**,int *) ;
 int cryptd_create_blkcipher (struct crypto_template*,struct rtattr**,int *) ;
 int cryptd_create_hash (struct crypto_template*,struct rtattr**,int *) ;
 struct crypto_attr_type* crypto_get_attr_type (struct rtattr**) ;
 int queue ;

__attribute__((used)) static int cryptd_create(struct crypto_template *tmpl, struct rtattr **tb)
{
 struct crypto_attr_type *algt;

 algt = crypto_get_attr_type(tb);
 if (IS_ERR(algt))
  return PTR_ERR(algt);

 switch (algt->type & algt->mask & CRYPTO_ALG_TYPE_MASK) {
 case 129:
  return cryptd_create_blkcipher(tmpl, tb, &queue);
 case 128:
  return cryptd_create_hash(tmpl, tb, &queue);
 case 130:
  return cryptd_create_aead(tmpl, tb, &queue);
 }

 return -EINVAL;
}
