
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct budget_patch {TYPE_5__* dvb_frontend; int dvb_adapter; TYPE_4__* dev; int i2c_adap; } ;
struct TYPE_7__ {int set_params; } ;
struct TYPE_8__ {void* set_tone; void* diseqc_send_burst; void* diseqc_send_master_cmd; TYPE_1__ tuner_ops; } ;
struct TYPE_11__ {TYPE_2__ ops; int * tuner_priv; } ;
struct TYPE_10__ {TYPE_3__* pci; } ;
struct TYPE_9__ {int subsystem_device; int subsystem_vendor; int device; int vendor; } ;


 int alps_bsru6_config ;
 int alps_bsru6_tuner_set_params ;
 int alps_bsrv2_config ;
 int alps_bsrv2_tuner_set_params ;
 void* budget_diseqc_send_burst ;
 void* budget_diseqc_send_master_cmd ;
 void* budget_patch_diseqc_send_burst ;
 void* budget_patch_diseqc_send_master_cmd ;
 void* budget_patch_set_tone ;
 void* budget_set_tone ;
 void* dvb_attach (int ,int *,int *) ;
 int dvb_frontend_detach (TYPE_5__*) ;
 scalar_t__ dvb_register_frontend (int *,TYPE_5__*) ;
 int grundig_29504_451_config ;
 int grundig_29504_451_tuner_set_params ;
 int printk (char*,...) ;
 int stv0299_attach ;
 int tda8083_attach ;
 int ves1x93_attach ;

__attribute__((used)) static void frontend_init(struct budget_patch* budget)
{
 switch(budget->dev->pci->subsystem_device) {
 case 0x0000:
 case 0x1013:


  budget->dvb_frontend = dvb_attach(ves1x93_attach, &alps_bsrv2_config, &budget->i2c_adap);
  if (budget->dvb_frontend) {
   budget->dvb_frontend->ops.tuner_ops.set_params = alps_bsrv2_tuner_set_params;
   budget->dvb_frontend->ops.diseqc_send_master_cmd = budget_patch_diseqc_send_master_cmd;
   budget->dvb_frontend->ops.diseqc_send_burst = budget_patch_diseqc_send_burst;
   budget->dvb_frontend->ops.set_tone = budget_patch_set_tone;
   break;
  }


  budget->dvb_frontend = dvb_attach(stv0299_attach, &alps_bsru6_config, &budget->i2c_adap);
  if (budget->dvb_frontend) {
   budget->dvb_frontend->ops.tuner_ops.set_params = alps_bsru6_tuner_set_params;
   budget->dvb_frontend->tuner_priv = &budget->i2c_adap;

   budget->dvb_frontend->ops.diseqc_send_master_cmd = budget_diseqc_send_master_cmd;
   budget->dvb_frontend->ops.diseqc_send_burst = budget_diseqc_send_burst;
   budget->dvb_frontend->ops.set_tone = budget_set_tone;
   break;
  }


  budget->dvb_frontend = dvb_attach(tda8083_attach, &grundig_29504_451_config, &budget->i2c_adap);
  if (budget->dvb_frontend) {
   budget->dvb_frontend->ops.tuner_ops.set_params = grundig_29504_451_tuner_set_params;
   budget->dvb_frontend->ops.diseqc_send_master_cmd = budget_diseqc_send_master_cmd;
   budget->dvb_frontend->ops.diseqc_send_burst = budget_diseqc_send_burst;
   budget->dvb_frontend->ops.set_tone = budget_set_tone;
   break;
  }
  break;
 }

 if (budget->dvb_frontend == ((void*)0)) {
  printk("dvb-ttpci: A frontend driver was not found for device [%04x:%04x] subsystem [%04x:%04x]\n",
         budget->dev->pci->vendor,
         budget->dev->pci->device,
         budget->dev->pci->subsystem_vendor,
         budget->dev->pci->subsystem_device);
 } else {
  if (dvb_register_frontend(&budget->dvb_adapter, budget->dvb_frontend)) {
   printk("budget-av: Frontend registration failed!\n");
   dvb_frontend_detach(budget->dvb_frontend);
   budget->dvb_frontend = ((void*)0);
  }
 }
}
