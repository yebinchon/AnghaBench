
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_sense {int dummy; } ;
struct packet_command {unsigned int buflen; scalar_t__ data_direction; int stat; int timeout; int sense; int buffer; int cmd; scalar_t__ quiet; } ;
struct cdrom_device_info {int * handle; } ;
typedef int ide_drive_t ;


 int ATAPI_WAIT_PC ;
 scalar_t__ CGC_DATA_WRITE ;
 unsigned int REQ_QUIET ;
 unsigned int REQ_WRITE ;
 int ide_cd_queue_pc (int *,int ,int,int ,unsigned int*,int ,int ,unsigned int) ;
 int memset (int ,int ,int) ;

int ide_cdrom_packet(struct cdrom_device_info *cdi,
       struct packet_command *cgc)
{
 ide_drive_t *drive = cdi->handle;
 unsigned int flags = 0;
 unsigned len = cgc->buflen;

 if (cgc->timeout <= 0)
  cgc->timeout = ATAPI_WAIT_PC;





 if (cgc->data_direction == CGC_DATA_WRITE)
  flags |= REQ_WRITE;

 if (cgc->sense)
  memset(cgc->sense, 0, sizeof(struct request_sense));

 if (cgc->quiet)
  flags |= REQ_QUIET;

 cgc->stat = ide_cd_queue_pc(drive, cgc->cmd,
        cgc->data_direction == CGC_DATA_WRITE,
        cgc->buffer, &len,
        cgc->sense, cgc->timeout, flags);
 if (!cgc->stat)
  cgc->buflen -= len;
 return cgc->stat;
}
