
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct Scsi_Host {int host_no; scalar_t__ base; } ;
typedef scalar_t__ off_t ;
struct TYPE_2__ {char* name; char* revision; char bustype; } ;


 int DBG (int ,int ) ;
 int DBG_PROC ;
 int ENOSYS ;
 TYPE_1__* SD (struct Scsi_Host*) ;
 int VER_MAJOR ;
 int VER_MINOR ;
 int VER_SUB ;
 int int_counter ;
 int printk (char*,scalar_t__,scalar_t__,int) ;
 int queue_counter ;
 scalar_t__ sprintf (char*,char*,...) ;

__attribute__((used)) static int eata_pio_proc_info(struct Scsi_Host *shost, char *buffer, char **start, off_t offset,
         int length, int rw)
{
 int len = 0;
 off_t begin = 0, pos = 0;

 if (rw)
  return -ENOSYS;

 len += sprintf(buffer+len, "EATA (Extended Attachment) PIO driver version: "
     "%d.%d%s\n",VER_MAJOR, VER_MINOR, VER_SUB);
 len += sprintf(buffer + len, "queued commands:     %10ld\n"
     "processed interrupts:%10ld\n", queue_counter, int_counter);
 len += sprintf(buffer + len, "\nscsi%-2d: HBA %.10s\n",
     shost->host_no, SD(shost)->name);
 len += sprintf(buffer + len, "Firmware revision: v%s\n",
     SD(shost)->revision);
 len += sprintf(buffer + len, "IO: PIO\n");
 len += sprintf(buffer + len, "Base IO : %#.4x\n", (u32) shost->base);
 len += sprintf(buffer + len, "Host Bus: %s\n",
     (SD(shost)->bustype == 'P')?"PCI ":
     (SD(shost)->bustype == 'E')?"EISA":"ISA ");

 pos = begin + len;

 if (pos < offset) {
  len = 0;
  begin = pos;
 }
 if (pos > offset + length)
  goto stop_output;

stop_output:
 DBG(DBG_PROC, printk("2pos: %ld offset: %ld len: %d\n", pos, offset, len));
 *start = buffer + (offset - begin);
 len -= (offset - begin);
 if (len > length)
  len = length;
 DBG(DBG_PROC, printk("3pos: %ld offset: %ld len: %d\n", pos, offset, len));

 return len;
}
