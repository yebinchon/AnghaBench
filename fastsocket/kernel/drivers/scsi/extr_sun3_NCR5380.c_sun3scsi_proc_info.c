
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
struct NCR5380_hostdata {scalar_t__ disconnected_queue; scalar_t__ issue_queue; scalar_t__ connected; } ;
typedef long off_t ;


 int ENOSYS ;
 char* HOSTNO ;
 char* NCR5380_PUBLIC_RELEASE ;
 struct scsi_cmnd* NEXT (struct scsi_cmnd*) ;
 int SPRINTF (char*,char*) ;
 int check_offset () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 char* lprint_Scsi_Cmnd (struct scsi_cmnd*,char*,char*,int) ;
 scalar_t__ main_running ;

__attribute__((used)) static int NCR5380_proc_info(struct Scsi_Host *instance, char *buffer,
        char **start, off_t offset, int length, int inout)
{
    char *pos = buffer;
    struct NCR5380_hostdata *hostdata;
    struct scsi_cmnd *ptr;
    unsigned long flags;
    off_t begin = 0;
    hostdata = (struct NCR5380_hostdata *)instance->hostdata;

    if (inout) {
 return(-ENOSYS);
    }
    SPRINTF("NCR5380 core release=%d.\n", NCR5380_PUBLIC_RELEASE);
    do { if (pos - buffer < offset - begin) { begin += pos - buffer; pos = buffer; } } while (0);
    local_irq_save(flags);
    SPRINTF("NCR5380: coroutine is%s running.\n", main_running ? "" : "n't");
    do { if (pos - buffer < offset - begin) { begin += pos - buffer; pos = buffer; } } while (0);
    if (!hostdata->connected)
 SPRINTF("scsi%d: no currently connected command\n", HOSTNO);
    else
 pos = lprint_Scsi_Cmnd ((struct scsi_cmnd *) hostdata->connected,
    pos, buffer, length);
    SPRINTF("scsi%d: issue_queue\n", HOSTNO);
    do { if (pos - buffer < offset - begin) { begin += pos - buffer; pos = buffer; } } while (0);
    for (ptr = (struct scsi_cmnd *) hostdata->issue_queue; ptr; ptr = NEXT(ptr))
    {
 pos = lprint_Scsi_Cmnd (ptr, pos, buffer, length);
 do { if (pos - buffer < offset - begin) { begin += pos - buffer; pos = buffer; } } while (0);
    }

    SPRINTF("scsi%d: disconnected_queue\n", HOSTNO);
    do { if (pos - buffer < offset - begin) { begin += pos - buffer; pos = buffer; } } while (0);
    for (ptr = (struct scsi_cmnd *) hostdata->disconnected_queue; ptr;
  ptr = NEXT(ptr)) {
 pos = lprint_Scsi_Cmnd (ptr, pos, buffer, length);
 do { if (pos - buffer < offset - begin) { begin += pos - buffer; pos = buffer; } } while (0);
    }

    local_irq_restore(flags);
    *start = buffer + (offset - begin);
    if (pos - buffer < offset - begin)
 return 0;
    else if (pos - buffer - (offset - begin) < length)
 return pos - buffer - (offset - begin);
    return length;
}
