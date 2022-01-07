
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CRYPT_S390_MSA ;
 int EOPNOTSUPP ;
 int KIMD_SHA_256 ;
 int alg ;
 int crypt_s390_func_available (int ,int ) ;
 int crypto_register_shash (int *) ;

__attribute__((used)) static int sha256_s390_init(void)
{
 if (!crypt_s390_func_available(KIMD_SHA_256, CRYPT_S390_MSA))
  return -EOPNOTSUPP;

 return crypto_register_shash(&alg);
}
