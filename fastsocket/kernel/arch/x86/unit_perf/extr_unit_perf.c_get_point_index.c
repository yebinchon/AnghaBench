
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int UNIT_PERF_HASH_SEED ;
 int UNIT_PERF_SLOT_MASK ;
 int jhash (char const*,int ,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static u32 get_point_index(const char *name)
{


 u32 value = jhash(name, strlen(name), (*((u32*)"uphs")));

 return (value&UNIT_PERF_SLOT_MASK);
}
