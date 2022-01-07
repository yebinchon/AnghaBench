
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int BaseAddress; } ;
typedef TYPE_1__ nsp_hw_data ;


 int IRQCONTROL ;
 int IRQCONTROL_ALLCLEAR ;
 int IRQCONTROL_ALLMASK ;
 int IRQPHASESENCE ;
 int SCSIBUSCTRL ;
 int SCSI_RST ;
 int SUCCESS ;
 int mdelay (int) ;
 int nsp_index_read (unsigned int,int ) ;
 int nsp_index_write (unsigned int,int ,int ) ;
 int nsp_write (unsigned int,int ,int ) ;
 int nsphw_init_sync (TYPE_1__*) ;

__attribute__((used)) static int nsp_bus_reset(nsp_hw_data *data)
{
 unsigned int base = data->BaseAddress;
 int i;

 nsp_write(base, IRQCONTROL, IRQCONTROL_ALLMASK);

 nsp_index_write(base, SCSIBUSCTRL, SCSI_RST);
 mdelay(100);
 nsp_index_write(base, SCSIBUSCTRL, 0);
 for(i = 0; i < 5; i++) {
  nsp_index_read(base, IRQPHASESENCE);
 }

 nsphw_init_sync(data);

 nsp_write(base, IRQCONTROL, IRQCONTROL_ALLCLEAR);

 return SUCCESS;
}
