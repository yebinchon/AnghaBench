
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nouveau_pm_memtiming {int* mr; } ;
struct nouveau_pm_level {struct nouveau_pm_memtiming timing; } ;
struct nouveau_mem_exec_func {int (* mrg ) (struct nouveau_mem_exec_func*,int) ;int (* precharge ) (struct nouveau_mem_exec_func*) ;int (* wait ) (struct nouveau_mem_exec_func*,int) ;int (* mrs ) (struct nouveau_mem_exec_func*,int,int) ;int (* timing_set ) (struct nouveau_mem_exec_func*) ;int (* refresh_auto ) (struct nouveau_mem_exec_func*,int) ;int (* refresh_self ) (struct nouveau_mem_exec_func*,int) ;int (* clock_set ) (struct nouveau_mem_exec_func*) ;int (* refresh ) (struct nouveau_mem_exec_func*) ;int dev; } ;
struct TYPE_2__ {int type; } ;
struct nouveau_fb {TYPE_1__ ram; } ;
struct nouveau_drm {int dummy; } ;
struct nouveau_device {int dummy; } ;


 int ENODEV ;
 int NV_ERROR (struct nouveau_drm*,char*) ;



 struct nouveau_device* nouveau_dev (int ) ;
 struct nouveau_drm* nouveau_drm (int ) ;
 struct nouveau_fb* nouveau_fb (struct nouveau_device*) ;
 int stub1 (struct nouveau_mem_exec_func*,int) ;
 int stub10 (struct nouveau_mem_exec_func*,int) ;
 int stub11 (struct nouveau_mem_exec_func*,int) ;
 int stub12 (struct nouveau_mem_exec_func*,int) ;
 int stub13 (struct nouveau_mem_exec_func*) ;
 int stub14 (struct nouveau_mem_exec_func*,int) ;
 int stub15 (struct nouveau_mem_exec_func*) ;
 int stub16 (struct nouveau_mem_exec_func*,int) ;
 int stub17 (struct nouveau_mem_exec_func*,int) ;
 int stub18 (struct nouveau_mem_exec_func*,int) ;
 int stub19 (struct nouveau_mem_exec_func*,int) ;
 int stub2 (struct nouveau_mem_exec_func*,int) ;
 int stub20 (struct nouveau_mem_exec_func*,int,int) ;
 int stub21 (struct nouveau_mem_exec_func*,int) ;
 int stub22 (struct nouveau_mem_exec_func*,int,int) ;
 int stub23 (struct nouveau_mem_exec_func*,int) ;
 int stub24 (struct nouveau_mem_exec_func*,int,int) ;
 int stub25 (struct nouveau_mem_exec_func*,int) ;
 int stub26 (struct nouveau_mem_exec_func*) ;
 int stub27 (struct nouveau_mem_exec_func*,int,int) ;
 int stub28 (struct nouveau_mem_exec_func*,int) ;
 int stub29 (struct nouveau_mem_exec_func*,int,int) ;
 int stub3 (struct nouveau_mem_exec_func*,int) ;
 int stub30 (struct nouveau_mem_exec_func*,int) ;
 int stub31 (struct nouveau_mem_exec_func*,int,int) ;
 int stub32 (struct nouveau_mem_exec_func*,int) ;
 int stub33 (struct nouveau_mem_exec_func*,int) ;
 int stub34 (struct nouveau_mem_exec_func*) ;
 int stub4 (struct nouveau_mem_exec_func*) ;
 int stub5 (struct nouveau_mem_exec_func*,int,int) ;
 int stub6 (struct nouveau_mem_exec_func*,int) ;
 int stub7 (struct nouveau_mem_exec_func*) ;
 int stub8 (struct nouveau_mem_exec_func*) ;
 int stub9 (struct nouveau_mem_exec_func*) ;

int
nouveau_mem_exec(struct nouveau_mem_exec_func *exec,
   struct nouveau_pm_level *perflvl)
{
 struct nouveau_drm *drm = nouveau_drm(exec->dev);
 struct nouveau_device *device = nouveau_dev(exec->dev);
 struct nouveau_fb *pfb = nouveau_fb(device);
 struct nouveau_pm_memtiming *info = &perflvl->timing;
 u32 tMRD = 1000, tCKSRE = 0, tCKSRX = 0, tXS = 0, tDLLK = 0;
 u32 mr[3] = { info->mr[0], info->mr[1], info->mr[2] };
 u32 mr1_dlloff;

 switch (pfb->ram.type) {
 case 130:
  tDLLK = 2000;
  mr1_dlloff = 0x00000001;
  break;
 case 129:
  tDLLK = 12000;
  tCKSRE = 2000;
  tXS = 1000;
  mr1_dlloff = 0x00000001;
  break;
 case 128:
  tDLLK = 40000;
  mr1_dlloff = 0x00000040;
  break;
 default:
  NV_ERROR(drm, "cannot reclock unsupported memtype\n");
  return -ENODEV;
 }


 switch (pfb->ram.type) {
 case 128:
 case 129:
  mr[2] = exec->mrg(exec, 2);
 default:
  mr[1] = exec->mrg(exec, 1);
  mr[0] = exec->mrg(exec, 0);
  break;
 }


 if (!(mr[1] & mr1_dlloff) && (info->mr[1] & mr1_dlloff)) {
  exec->precharge(exec);
  exec->mrs (exec, 1, mr[1] | mr1_dlloff);
  exec->wait(exec, tMRD);
 }


 exec->precharge(exec);
 exec->refresh(exec);
 exec->refresh(exec);
 exec->refresh_auto(exec, 0);
 exec->refresh_self(exec, 1);
 exec->wait(exec, tCKSRE);


 exec->clock_set(exec);


 exec->wait(exec, tCKSRX);
 exec->precharge(exec);
 exec->refresh_self(exec, 0);
 exec->refresh_auto(exec, 1);
 exec->wait(exec, tXS);
 exec->wait(exec, tXS);


 if (mr[2] != info->mr[2]) {
  exec->mrs (exec, 2, info->mr[2]);
  exec->wait(exec, tMRD);
 }

 if (mr[1] != info->mr[1]) {

  exec->mrs (exec, 1, info->mr[1] | (mr[1] & mr1_dlloff));
  exec->wait(exec, tMRD);
 }

 if (mr[0] != info->mr[0]) {
  exec->mrs (exec, 0, info->mr[0]);
  exec->wait(exec, tMRD);
 }


 exec->timing_set(exec);


 if (!(info->mr[1] & mr1_dlloff)) {
  if (mr[1] & mr1_dlloff) {
   exec->mrs (exec, 1, info->mr[1]);
   exec->wait(exec, tMRD);
  }
  exec->mrs (exec, 0, info->mr[0] | 0x00000100);
  exec->wait(exec, tMRD);
  exec->mrs (exec, 0, info->mr[0] | 0x00000000);
  exec->wait(exec, tMRD);
  exec->wait(exec, tDLLK);
  if (pfb->ram.type == 128)
   exec->precharge(exec);
 }

 return 0;
}
