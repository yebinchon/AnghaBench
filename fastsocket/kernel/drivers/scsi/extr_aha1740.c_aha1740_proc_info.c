
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct aha1740_hostdata {scalar_t__ translation; TYPE_1__* edev; } ;
struct Scsi_Host {char* io_port; int irq; } ;
typedef int off_t ;
struct TYPE_2__ {int slot; } ;


 int ENOSYS ;
 struct aha1740_hostdata* HOSTDATA (struct Scsi_Host*) ;
 int sprintf (char*,char*,char*,int ,int ,char*) ;

__attribute__((used)) static int aha1740_proc_info(struct Scsi_Host *shpnt, char *buffer,
        char **start, off_t offset,
        int length, int inout)
{
 int len;
 struct aha1740_hostdata *host;

 if (inout)
  return-ENOSYS;

 host = HOSTDATA(shpnt);

 len = sprintf(buffer, "aha174x at IO:%lx, IRQ %d, SLOT %d.\n"
        "Extended translation %sabled.\n",
        shpnt->io_port, shpnt->irq, host->edev->slot,
        host->translation ? "en" : "dis");

 if (offset > len) {
  *start = buffer;
  return 0;
 }

 *start = buffer + offset;
 len -= offset;
 if (len > length)
  len = length;
 return len;
}
