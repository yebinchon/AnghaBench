
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline u32 iwl_mvm_reciprocal(u32 v)
{
 if (!v)
  return 0;
 return 0xFFFFFFFF / v;
}
