
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int entropy ;
typedef int __u64 ;


 int BUG_ON (int) ;
 int KMC_PRNG ;
 int crypt_s390_kmc (int ,int ,char*,char*,int) ;
 int memcpy (int ,int *,int) ;
 int parm_block ;

__attribute__((used)) static void prng_add_entropy(void)
{
 __u64 entropy[4];
 unsigned int i;
 int ret;

 for (i = 0; i < 16; i++) {
  ret = crypt_s390_kmc(KMC_PRNG, parm_block, (char *)entropy,
         (char *)entropy, sizeof(entropy));
  BUG_ON(ret < 0 || ret != sizeof(entropy));
  memcpy(parm_block, entropy, sizeof(entropy));
 }
}
