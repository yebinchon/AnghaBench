
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_port {int dummy; } ;


 int ATA_CBL_PATA40 ;

__attribute__((used)) static int osb4_cable(struct ata_port *ap) {
 return ATA_CBL_PATA40;
}
