
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* host; } ;
struct TYPE_5__ {int host_no; } ;
typedef TYPE_2__ AS_Host ;


 int SBIC_ASR ;
 int printk (char*,int ,char*) ;
 int sbic_arm_read (TYPE_2__*,int ) ;
 int udelay (int) ;

__attribute__((used)) static int
acornscsi_sbic_wait(AS_Host *host, int stat_mask, int stat, int timeout, char *msg)
{
 int asr;

 do {
  asr = sbic_arm_read(host, SBIC_ASR);

  if ((asr & stat_mask) == stat)
   return 0;

  udelay(1);
 } while (--timeout);

 printk("scsi%d: timeout while %s\n", host->host->host_no, msg);

 return -1;
}
