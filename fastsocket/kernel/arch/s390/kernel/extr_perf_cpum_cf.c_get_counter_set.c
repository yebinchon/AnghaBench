
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int CPUMF_CTR_SET_BASIC ;
 int CPUMF_CTR_SET_CRYPTO ;
 int CPUMF_CTR_SET_EXT ;
 int CPUMF_CTR_SET_USER ;

__attribute__((used)) static int get_counter_set(u64 event)
{
 int set = -1;

 if (event < 32)
  set = CPUMF_CTR_SET_BASIC;
 else if (event < 64)
  set = CPUMF_CTR_SET_USER;
 else if (event < 128)
  set = CPUMF_CTR_SET_CRYPTO;
 else if (event < 256)
  set = CPUMF_CTR_SET_EXT;

 return set;
}
