
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int print_opcode_name (unsigned char*,int ) ;
 int printk (char*,...) ;
 int scsi_command_size (unsigned char*) ;

void __scsi_print_command(unsigned char *cdb)
{
 int k, len;

 print_opcode_name(cdb, 0);
 len = scsi_command_size(cdb);

 for (k = 0; k < len; ++k)
  printk(" %02x", cdb[k]);
 printk("\n");
}
