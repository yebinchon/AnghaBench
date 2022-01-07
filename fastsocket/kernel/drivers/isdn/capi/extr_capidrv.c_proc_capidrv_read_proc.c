
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int off_t ;
struct TYPE_3__ {int nsentdatapkt; int nsentctlpkt; int nrecvdatapkt; int nrecvctlpkt; } ;
struct TYPE_4__ {TYPE_1__ ap; } ;


 TYPE_2__ global ;
 scalar_t__ sprintf (char*,char*,int ,int ,int ,int ) ;

__attribute__((used)) static int proc_capidrv_read_proc(char *page, char **start, off_t off,
                                       int count, int *eof, void *data)
{
 int len = 0;

 len += sprintf(page+len, "%lu %lu %lu %lu\n",
   global.ap.nrecvctlpkt,
   global.ap.nrecvdatapkt,
   global.ap.nsentctlpkt,
   global.ap.nsentdatapkt);
 if (off+count >= len)
    *eof = 1;
 if (len < off)
           return 0;
 *start = page + off;
 return ((count < len-off) ? count : len-off);
}
