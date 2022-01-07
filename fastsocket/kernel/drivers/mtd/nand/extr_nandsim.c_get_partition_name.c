
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL ;
 char* kstrdup (char*,int ) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static char *get_partition_name(int i)
{
 char buf[64];
 sprintf(buf, "NAND simulator partition %d", i);
 return kstrdup(buf, GFP_KERNEL);
}
