
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_host_template {char* proc_name; } ;


 unsigned int MAX_BOARDS ;
 scalar_t__ MAX_EISA_ADDR ;
 size_t MAX_INT_PARAM ;
 scalar_t__ MAX_ISA_ADDR ;
 scalar_t__ MIN_EISA_ADDR ;
 scalar_t__ SKIP ;
 int add_pci_ports () ;
 int boot_options ;
 int eisa_probe ;
 int enable_pci_ports () ;
 scalar_t__* io_port ;
 int isa_probe ;
 unsigned int num_boards ;
 int option_setup (int ) ;
 scalar_t__ pci_probe ;
 scalar_t__ port_detect (scalar_t__,unsigned int,struct scsi_host_template*) ;
 int setup_done ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static int eata2x_detect(struct scsi_host_template *tpnt)
{
 unsigned int j = 0, k;

 tpnt->proc_name = "eata2x";

 if (strlen(boot_options))
  option_setup(boot_options);
 for (k = MAX_INT_PARAM; io_port[k]; k++)
  if (io_port[k] == SKIP)
   continue;
  else if (io_port[k] <= MAX_ISA_ADDR) {
   if (!isa_probe)
    io_port[k] = SKIP;
  } else if (io_port[k] >= MIN_EISA_ADDR
      && io_port[k] <= MAX_EISA_ADDR) {
   if (!eisa_probe)
    io_port[k] = SKIP;
  }

 if (pci_probe) {
  if (!setup_done)
   add_pci_ports();
  else
   enable_pci_ports();
 }

 for (k = 0; io_port[k]; k++) {

  if (io_port[k] == SKIP)
   continue;

  if (j < MAX_BOARDS && port_detect(io_port[k], j, tpnt))
   j++;
 }

 num_boards = j;
 return j;
}
