
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int PCIBIOS_SUCCESSFUL ;
 int* bytemask ;
 int crp_read (int,int*) ;
 int pr_debug (char*,int,...) ;

__attribute__((used)) static int local_read_config(int where, int size, u32 *value)
{
 u32 n, data;
 pr_debug("local_read_config from %d size %d\n", where, size);
 n = where % 4;
 crp_read(where & ~3, &data);
 *value = (data >> (8*n)) & bytemask[size];
 pr_debug("local_read_config read %#x\n", *value);
 return PCIBIOS_SUCCESSFUL;
}
