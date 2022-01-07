
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int CRYPTO_ALG_TYPE_MASK ;
 int ENOENT ;
 scalar_t__ crypto_has_alg (char const*,scalar_t__,int ) ;

__attribute__((used)) static int do_alg_test(const char *alg, u32 type, u32 mask)
{
 return crypto_has_alg(alg, type, mask ?: CRYPTO_ALG_TYPE_MASK) ?
        0 : -ENOENT;
}
