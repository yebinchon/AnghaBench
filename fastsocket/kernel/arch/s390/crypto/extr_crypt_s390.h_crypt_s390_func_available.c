
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CRYPT_S390_FUNC_MASK ;






 unsigned int CRYPT_S390_MSA ;
 unsigned int CRYPT_S390_MSA3 ;
 unsigned int CRYPT_S390_MSA4 ;
 int CRYPT_S390_OP_MASK ;
 int KIMD_QUERY ;
 int KLMD_QUERY ;
 int KMAC_QUERY ;
 int KMCTR_QUERY ;
 int KMC_QUERY ;
 int KM_QUERY ;
 int crypt_s390_kimd (int ,unsigned char**,int *,int ) ;
 int crypt_s390_klmd (int ,unsigned char**,int *,int ) ;
 int crypt_s390_km (int ,unsigned char**,int *,int *,int ) ;
 int crypt_s390_kmac (int ,unsigned char**,int *,int ) ;
 int crypt_s390_kmc (int ,unsigned char**,int *,int *,int ) ;
 int crypt_s390_kmctr (int ,unsigned char**,int *,int *,int ,int *) ;
 unsigned long long stfl () ;
 scalar_t__ stfle (unsigned long long*,int) ;

__attribute__((used)) static inline int crypt_s390_func_available(int func,
     unsigned int facility_mask)
{
 unsigned long long facility_bits[2];
 unsigned char status[16];
 int ret;

 if (facility_mask & CRYPT_S390_MSA &&
     !(stfl() & 1ULL << (31 - 17)))
  return 0;

 if (facility_mask & CRYPT_S390_MSA3 ||
     facility_mask & CRYPT_S390_MSA4)
  if (stfle(facility_bits, 2) <= 0)
   return 0;

 if (facility_mask & CRYPT_S390_MSA3 &&
     !(facility_bits[1] & (1ULL << (63 - (76 - 64)))))
  return 0;
 if (facility_mask & CRYPT_S390_MSA4 &&
     !(facility_bits[1] & (1ULL << (63 - (77 - 64)))))
  return 0;

 switch (func & CRYPT_S390_OP_MASK) {
 case 131:
  ret = crypt_s390_km(KM_QUERY, &status, ((void*)0), ((void*)0), 0);
  break;
 case 129:
  ret = crypt_s390_kmc(KMC_QUERY, &status, ((void*)0), ((void*)0), 0);
  break;
 case 133:
  ret = crypt_s390_kimd(KIMD_QUERY, &status, ((void*)0), 0);
  break;
 case 132:
  ret = crypt_s390_klmd(KLMD_QUERY, &status, ((void*)0), 0);
  break;
 case 130:
  ret = crypt_s390_kmac(KMAC_QUERY, &status, ((void*)0), 0);
  break;
 case 128:
  ret = crypt_s390_kmctr(KMCTR_QUERY, &status, ((void*)0), ((void*)0), 0,
           ((void*)0));
  break;
 default:
  return 0;
 }
 if (ret < 0)
  return 0;
 func &= CRYPT_S390_FUNC_MASK;
 func &= 0x7f;
 return (status[func >> 3] & (0x80 >> (func & 7))) != 0;
}
