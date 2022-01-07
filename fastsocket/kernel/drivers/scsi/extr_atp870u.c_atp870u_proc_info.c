
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct Scsi_Host {int io_port; int irq; } ;
typedef scalar_t__ off_t ;
typedef int buff ;


 int BLS ;
 int EINVAL ;
 int memset (int *,int ,int) ;
 scalar_t__ sprintf (int ,char*,...) ;

__attribute__((used)) static int atp870u_proc_info(struct Scsi_Host *HBAptr, char *buffer,
        char **start, off_t offset, int length, int inout)
{
 static u8 buff[512];
 int size = 0;
 int len = 0;
 off_t begin = 0;
 off_t pos = 0;

 if (inout)
  return -EINVAL;
 if (offset == 0)
  memset(buff, 0, sizeof(buff));
 size += sprintf(BLS, "ACARD AEC-671X Driver Version: 2.6+ac\n");
 len += size;
 pos = begin + len;
 size = 0;

 size += sprintf(BLS, "\n");
 size += sprintf(BLS, "Adapter Configuration:\n");
 size += sprintf(BLS, "               Base IO: %#.4lx\n", HBAptr->io_port);
 size += sprintf(BLS, "                   IRQ: %d\n", HBAptr->irq);
 len += size;
 pos = begin + len;

 *start = buffer + (offset - begin);
 len -= (offset - begin);
 if (len > length) {
  len = length;
 }
 return (len);
}
