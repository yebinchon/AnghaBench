
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smp_resp {int result; } ;
typedef struct smp_resp u8 ;
struct TYPE_2__ {scalar_t__ configuring; } ;
struct domain_device {int sas_addr; TYPE_1__ ex_dev; } ;


 int ENOMEM ;
 int HZ ;
 int RG_REQ_SIZE ;
 int RG_RESP_SIZE ;
 int SAS_ADDR (int ) ;
 int SAS_DPRINTK (char*,int ,...) ;
 struct smp_resp SMP_REPORT_GENERAL ;
 int SMP_RESP_FUNC_ACC ;
 struct smp_resp* alloc_smp_req (int ) ;
 struct smp_resp* alloc_smp_resp (int ) ;
 int ex_assign_report_general (struct domain_device*,struct smp_resp*) ;
 int kfree (struct smp_resp*) ;
 int schedule_timeout_interruptible (int) ;
 int smp_execute_task (struct domain_device*,struct smp_resp*,int ,struct smp_resp*,int ) ;

__attribute__((used)) static int sas_ex_general(struct domain_device *dev)
{
 u8 *rg_req;
 struct smp_resp *rg_resp;
 int res;
 int i;

 rg_req = alloc_smp_req(RG_REQ_SIZE);
 if (!rg_req)
  return -ENOMEM;

 rg_resp = alloc_smp_resp(RG_RESP_SIZE);
 if (!rg_resp) {
  kfree(rg_req);
  return -ENOMEM;
 }

 rg_req[1] = SMP_REPORT_GENERAL;

 for (i = 0; i < 5; i++) {
  res = smp_execute_task(dev, rg_req, RG_REQ_SIZE, rg_resp,
           RG_RESP_SIZE);

  if (res) {
   SAS_DPRINTK("RG to ex %016llx failed:0x%x\n",
        SAS_ADDR(dev->sas_addr), res);
   goto out;
  } else if (rg_resp->result != SMP_RESP_FUNC_ACC) {
   SAS_DPRINTK("RG:ex %016llx returned SMP result:0x%x\n",
        SAS_ADDR(dev->sas_addr), rg_resp->result);
   res = rg_resp->result;
   goto out;
  }

  ex_assign_report_general(dev, rg_resp);

  if (dev->ex_dev.configuring) {
   SAS_DPRINTK("RG: ex %llx self-configuring...\n",
        SAS_ADDR(dev->sas_addr));
   schedule_timeout_interruptible(5*HZ);
  } else
   break;
 }
out:
 kfree(rg_req);
 kfree(rg_resp);
 return res;
}
