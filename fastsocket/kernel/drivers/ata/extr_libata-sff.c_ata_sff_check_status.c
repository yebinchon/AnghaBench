
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int status_addr; } ;
struct ata_port {TYPE_1__ ioaddr; } ;


 int ioread8 (int ) ;

u8 ata_sff_check_status(struct ata_port *ap)
{
 return ioread8(ap->ioaddr.status_addr);
}
