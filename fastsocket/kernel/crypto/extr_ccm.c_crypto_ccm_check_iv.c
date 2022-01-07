
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int EINVAL ;

__attribute__((used)) static inline int crypto_ccm_check_iv(const u8 *iv)
{

 if (1 > iv[0] || iv[0] > 7)
  return -EINVAL;

 return 0;
}
