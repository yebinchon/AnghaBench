
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int suffix ;
struct crypto_alg {char* cra_driver_name; int cra_name; } ;


 int CRYPTO_MAX_ALG_NAME ;
 int ENAMETOOLONG ;
 int memcpy (char*,char const*,int) ;
 int strlcpy (char*,int ,int) ;

__attribute__((used)) static inline int crypto_set_driver_name(struct crypto_alg *alg)
{
 static const char suffix[] = "-generic";
 char *driver_name = alg->cra_driver_name;
 int len;

 if (*driver_name)
  return 0;

 len = strlcpy(driver_name, alg->cra_name, CRYPTO_MAX_ALG_NAME);
 if (len + sizeof(suffix) > CRYPTO_MAX_ALG_NAME)
  return -ENAMETOOLONG;

 memcpy(driver_name + len, suffix, sizeof(suffix));
 return 0;
}
