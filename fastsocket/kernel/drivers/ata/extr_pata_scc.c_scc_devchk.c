
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ata_ioports {int lbal_addr; int nsect_addr; } ;
struct ata_port {TYPE_1__* ops; struct ata_ioports ioaddr; } ;
struct TYPE_2__ {int (* sff_dev_select ) (struct ata_port*,unsigned int) ;} ;


 int in_be32 (int ) ;
 int out_be32 (int ,int) ;
 int stub1 (struct ata_port*,unsigned int) ;

__attribute__((used)) static unsigned int scc_devchk (struct ata_port *ap,
    unsigned int device)
{
 struct ata_ioports *ioaddr = &ap->ioaddr;
 u8 nsect, lbal;

 ap->ops->sff_dev_select(ap, device);

 out_be32(ioaddr->nsect_addr, 0x55);
 out_be32(ioaddr->lbal_addr, 0xaa);

 out_be32(ioaddr->nsect_addr, 0xaa);
 out_be32(ioaddr->lbal_addr, 0x55);

 out_be32(ioaddr->nsect_addr, 0x55);
 out_be32(ioaddr->lbal_addr, 0xaa);

 nsect = in_be32(ioaddr->nsect_addr);
 lbal = in_be32(ioaddr->lbal_addr);

 if ((nsect == 0x55) && (lbal == 0xaa))
  return 1;

 return 0;
}
