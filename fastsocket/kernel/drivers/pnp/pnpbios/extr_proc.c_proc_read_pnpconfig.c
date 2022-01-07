
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnp_isa_config_struc {int revision; int no_csns; int isa_rd_data_port; } ;
typedef int off_t ;


 int EIO ;
 scalar_t__ pnp_bios_isapnp_config (struct pnp_isa_config_struc*) ;
 int snprintf (char*,int,char*,int,int,int) ;

__attribute__((used)) static int proc_read_pnpconfig(char *buf, char **start, off_t pos,
          int count, int *eof, void *data)
{
 struct pnp_isa_config_struc pnps;

 if (pnp_bios_isapnp_config(&pnps))
  return -EIO;
 return snprintf(buf, count,
   "structure_revision %d\n"
   "number_of_CSNs %d\n"
   "ISA_read_data_port 0x%x\n",
   pnps.revision, pnps.no_csns, pnps.isa_rd_data_port);
}
