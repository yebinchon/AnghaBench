
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int altstatus_addr; } ;
struct ata_port {TYPE_1__ ioaddr; } ;


 int in_be32 (int ) ;

__attribute__((used)) static u8 scc_check_altstatus (struct ata_port *ap)
{
 return in_be32(ap->ioaddr.altstatus_addr);
}
