
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int alg_test (char const*,char const*,int ,int ) ;
 scalar_t__ fips_enabled ;

__attribute__((used)) static inline int tcrypt_test(const char *alg)
{
 int ret;

 ret = alg_test(alg, alg, 0, 0);

 if (fips_enabled && ret == -EINVAL)
  ret = 0;
 return ret;
}
