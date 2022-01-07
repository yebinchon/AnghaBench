
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct hwicap_drvdata {int dev; TYPE_1__* config_regs; TYPE_2__* config; } ;
struct TYPE_4__ {int (* reset ) (struct hwicap_drvdata*) ;} ;
struct TYPE_3__ {int IDCODE; } ;


 int dev_dbg (int ,char*,...) ;
 int hwicap_command_desync (struct hwicap_drvdata*) ;
 int hwicap_get_configuration_register (struct hwicap_drvdata*,int ,int *) ;
 int stub1 (struct hwicap_drvdata*) ;

__attribute__((used)) static int hwicap_initialize_hwicap(struct hwicap_drvdata *drvdata)
{
 int status;
 u32 idcode;

 dev_dbg(drvdata->dev, "initializing\n");



 dev_dbg(drvdata->dev, "Reset...\n");
 drvdata->config->reset(drvdata);

 dev_dbg(drvdata->dev, "Desync...\n");
 status = hwicap_command_desync(drvdata);
 if (status)
  return status;





 dev_dbg(drvdata->dev, "Reading IDCODE...\n");
 status = hwicap_get_configuration_register(
   drvdata, drvdata->config_regs->IDCODE, &idcode);
 dev_dbg(drvdata->dev, "IDCODE = %x\n", idcode);
 if (status)
  return status;

 dev_dbg(drvdata->dev, "Desync...\n");
 status = hwicap_command_desync(drvdata);
 if (status)
  return status;

 return 0;
}
