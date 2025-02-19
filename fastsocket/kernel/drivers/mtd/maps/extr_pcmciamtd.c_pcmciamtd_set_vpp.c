
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pcmciamtd_dev {int vpp; struct pcmcia_device* p_dev; } ;
struct pcmcia_device {int dummy; } ;
struct map_info {scalar_t__ map_priv_1; } ;
struct TYPE_3__ {int Attributes; int Vpp2; int Vpp1; scalar_t__ Vcc; } ;
typedef TYPE_1__ modconf_t ;


 int CONF_VPP1_CHANGE_VALID ;
 int CONF_VPP2_CHANGE_VALID ;
 int DEBUG (int,char*,struct pcmciamtd_dev*,int,int ) ;
 int ModifyConfiguration ;
 int cs_error (struct pcmcia_device*,int ,int) ;
 int pcmcia_modify_configuration (struct pcmcia_device*,TYPE_1__*) ;

__attribute__((used)) static void pcmciamtd_set_vpp(struct map_info *map, int on)
{
 struct pcmciamtd_dev *dev = (struct pcmciamtd_dev *)map->map_priv_1;
 struct pcmcia_device *link = dev->p_dev;
 modconf_t mod;
 int ret;

 mod.Attributes = CONF_VPP1_CHANGE_VALID | CONF_VPP2_CHANGE_VALID;
 mod.Vcc = 0;
 mod.Vpp1 = mod.Vpp2 = on ? dev->vpp : 0;

 DEBUG(2, "dev = %p on = %d vpp = %d\n", dev, on, dev->vpp);
 ret = pcmcia_modify_configuration(link, &mod);
 if (ret != 0)
  cs_error(link, ModifyConfiguration, ret);
}
