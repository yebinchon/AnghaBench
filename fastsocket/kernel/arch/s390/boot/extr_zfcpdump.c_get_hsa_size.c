
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int __u64 ;


 int DEV_ZCORE_HSA ;
 scalar_t__ read_file (int ,char*,int) ;
 int strtoul (char*,int *,int) ;

__attribute__((used)) static __u64 get_hsa_size(void)
{
 char buf[128];

 if (read_file(DEV_ZCORE_HSA, buf, sizeof(buf)))
  return 0;
 return strtoul(buf, ((void*)0), 16);
}
