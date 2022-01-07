
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct crypto_alg {int dummy; } ;


 struct crypto_alg* __crypto_alg_lookup (char const*,int ,int ) ;
 int crypto_alg_sem ;
 int down_read (int *) ;
 int up_read (int *) ;

struct crypto_alg *crypto_alg_lookup(const char *name, u32 type, u32 mask)
{
 struct crypto_alg *alg;

 down_read(&crypto_alg_sem);
 alg = __crypto_alg_lookup(name, type, mask);
 up_read(&crypto_alg_sem);

 return alg;
}
