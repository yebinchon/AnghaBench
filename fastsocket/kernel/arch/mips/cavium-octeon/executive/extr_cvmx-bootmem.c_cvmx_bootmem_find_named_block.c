
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cvmx_bootmem_named_block_desc {int dummy; } ;


 struct cvmx_bootmem_named_block_desc* cvmx_bootmem_phy_named_block_find (char*,int ) ;

struct cvmx_bootmem_named_block_desc *cvmx_bootmem_find_named_block(char *name)
{
 return cvmx_bootmem_phy_named_block_find(name, 0);
}
