
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct of_drconf_cell {int flags; int aa_index; int reserved; int drc_index; int base_addr; } ;


 int n_mem_addr_cells ;
 int read_n_cells (int ,int const**) ;

__attribute__((used)) static void read_drconf_cell(struct of_drconf_cell *drmem, const u32 **cellp)
{
 const u32 *cp;

 drmem->base_addr = read_n_cells(n_mem_addr_cells, cellp);

 cp = *cellp;
 drmem->drc_index = cp[0];
 drmem->reserved = cp[1];
 drmem->aa_index = cp[2];
 drmem->flags = cp[3];

 *cellp = cp + 4;
}
