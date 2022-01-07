
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_taskfile {int command; } ;
struct TYPE_2__ {int command_addr; } ;
struct ata_port {TYPE_1__ ioaddr; int print_id; } ;


 int DPRINTK (char*,int ,int ) ;
 int ata_sff_pause (struct ata_port*) ;
 int out_be32 (int ,int ) ;

__attribute__((used)) static void scc_exec_command (struct ata_port *ap,
         const struct ata_taskfile *tf)
{
 DPRINTK("ata%u: cmd 0x%X\n", ap->print_id, tf->command);

 out_be32(ap->ioaddr.command_addr, tf->command);
 ata_sff_pause(ap);
}
