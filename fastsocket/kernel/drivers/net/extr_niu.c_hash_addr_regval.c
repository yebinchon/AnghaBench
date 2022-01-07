
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int HASH_TBL_ADDR_AUTOINC ;

__attribute__((used)) static u64 hash_addr_regval(unsigned long index, unsigned long num_entries)
{
 return ((u64)index | (num_entries == 1 ?
         HASH_TBL_ADDR_AUTOINC : 0));
}
