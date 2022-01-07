
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEV_ZCORE_HSA ;
 int write_to_file (int ,char*) ;

__attribute__((used)) static void release_hsa(void)
{
 write_to_file(DEV_ZCORE_HSA, "0");
}
