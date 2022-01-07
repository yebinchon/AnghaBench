
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cvmx_bootmem_phy_named_block_free (char*,int ) ;

int cvmx_bootmem_free_named(char *name)
{
 return cvmx_bootmem_phy_named_block_free(name, 0);
}
