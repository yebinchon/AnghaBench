
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixp4xx_pata_data {scalar_t__ cs1; int cs0; } ;
struct ata_ioports {int command_addr; int status_addr; int device_addr; int lbah_addr; int lbam_addr; int lbal_addr; int nsect_addr; int feature_addr; int error_addr; scalar_t__ ctl_addr; scalar_t__ altstatus_addr; int cmd_addr; int data_addr; } ;
struct ata_port {struct ata_ioports ioaddr; } ;


 int ata_port_desc (struct ata_port*,char*,unsigned long,unsigned long) ;
 int ata_sff_std_ports (struct ata_ioports*) ;

__attribute__((used)) static void ixp4xx_setup_port(struct ata_port *ap,
         struct ixp4xx_pata_data *data,
         unsigned long raw_cs0, unsigned long raw_cs1)
{
 struct ata_ioports *ioaddr = &ap->ioaddr;
 unsigned long raw_cmd = raw_cs0;
 unsigned long raw_ctl = raw_cs1 + 0x06;

 ioaddr->cmd_addr = data->cs0;
 ioaddr->altstatus_addr = data->cs1 + 0x06;
 ioaddr->ctl_addr = data->cs1 + 0x06;

 ata_sff_std_ports(ioaddr);







 *(unsigned long *)&ioaddr->data_addr ^= 0x02;
 *(unsigned long *)&ioaddr->cmd_addr ^= 0x03;
 *(unsigned long *)&ioaddr->altstatus_addr ^= 0x03;
 *(unsigned long *)&ioaddr->ctl_addr ^= 0x03;
 *(unsigned long *)&ioaddr->error_addr ^= 0x03;
 *(unsigned long *)&ioaddr->feature_addr ^= 0x03;
 *(unsigned long *)&ioaddr->nsect_addr ^= 0x03;
 *(unsigned long *)&ioaddr->lbal_addr ^= 0x03;
 *(unsigned long *)&ioaddr->lbam_addr ^= 0x03;
 *(unsigned long *)&ioaddr->lbah_addr ^= 0x03;
 *(unsigned long *)&ioaddr->device_addr ^= 0x03;
 *(unsigned long *)&ioaddr->status_addr ^= 0x03;
 *(unsigned long *)&ioaddr->command_addr ^= 0x03;

 raw_cmd ^= 0x03;
 raw_ctl ^= 0x03;


 ata_port_desc(ap, "cmd 0x%lx ctl 0x%lx", raw_cmd, raw_ctl);
}
