
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ata_link {TYPE_1__* ap; } ;
struct TYPE_2__ {int port_no; } ;


 scalar_t__ ali_isa_bridge ;
 int ata_sff_postreset (struct ata_link*,unsigned int*) ;
 int pci_read_config_byte (scalar_t__,int,int*) ;
 int pci_write_config_byte (scalar_t__,int,int) ;

__attribute__((used)) static void ali_c2_c3_postreset(struct ata_link *link, unsigned int *classes)
{
 u8 r;
 int port_bit = 4 << link->ap->port_no;


 if (ali_isa_bridge) {

  pci_read_config_byte(ali_isa_bridge, 0x58, &r);
  r &= ~port_bit;
  pci_write_config_byte(ali_isa_bridge, 0x58, r);
  r |= port_bit;
  pci_write_config_byte(ali_isa_bridge, 0x58, r);
 }
 ata_sff_postreset(link, classes);
}
