
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7164_fw_status {void* remainheap; void* cpuload; void* inst; void* spec; void* mode; void* status; } ;
struct saa7164_dev {struct saa7164_fw_status fw_status; } ;


 int SAA_DEVICE_SYSINIT_CPULOAD ;
 int SAA_DEVICE_SYSINIT_INST ;
 int SAA_DEVICE_SYSINIT_MODE ;
 int SAA_DEVICE_SYSINIT_REMAINHEAP ;
 int SAA_DEVICE_SYSINIT_SPEC ;
 int SAA_DEVICE_SYSINIT_STATUS ;
 int dprintk (int,char*,...) ;
 void* saa7164_readl (int ) ;

void saa7164_getfirmwarestatus(struct saa7164_dev *dev)
{
 struct saa7164_fw_status *s = &dev->fw_status;

 dev->fw_status.status = saa7164_readl(SAA_DEVICE_SYSINIT_STATUS);
 dev->fw_status.mode = saa7164_readl(SAA_DEVICE_SYSINIT_MODE);
 dev->fw_status.spec = saa7164_readl(SAA_DEVICE_SYSINIT_SPEC);
 dev->fw_status.inst = saa7164_readl(SAA_DEVICE_SYSINIT_INST);
 dev->fw_status.cpuload = saa7164_readl(SAA_DEVICE_SYSINIT_CPULOAD);
 dev->fw_status.remainheap =
  saa7164_readl(SAA_DEVICE_SYSINIT_REMAINHEAP);

 dprintk(1, "Firmware status:\n");
 dprintk(1, " .status     = 0x%08x\n", s->status);
 dprintk(1, " .mode       = 0x%08x\n", s->mode);
 dprintk(1, " .spec       = 0x%08x\n", s->spec);
 dprintk(1, " .inst       = 0x%08x\n", s->inst);
 dprintk(1, " .cpuload    = 0x%08x\n", s->cpuload);
 dprintk(1, " .remainheap = 0x%08x\n", s->remainheap);
}
