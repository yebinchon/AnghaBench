
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ BasePort1; } ;
struct pcmcia_device {TYPE_1__ io; int conf; TYPE_2__* priv; } ;
struct TYPE_4__ {int manf_id; } ;
typedef TYPE_2__ scsi_info_t ;


 int MANFID_MACNICA ;
 int MANFID_PIONEER ;
 int outb (int,scalar_t__) ;
 int pcmcia_request_configuration (struct pcmcia_device*,int *) ;
 int qlogicfas408_bus_reset (int *) ;

__attribute__((used)) static int qlogic_resume(struct pcmcia_device *link)
{
 scsi_info_t *info = link->priv;

 pcmcia_request_configuration(link, &link->conf);
 if ((info->manf_id == MANFID_MACNICA) ||
     (info->manf_id == MANFID_PIONEER) ||
     (info->manf_id == 0x0098)) {
  outb(0x80, link->io.BasePort1 + 0xd);
  outb(0x24, link->io.BasePort1 + 0x9);
  outb(0x04, link->io.BasePort1 + 0xd);
 }

 qlogicfas408_bus_reset(((void*)0));

 return 0;
}
