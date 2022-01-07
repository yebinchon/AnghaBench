
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int va_list ;
typedef int buf ;
struct TYPE_5__ {TYPE_1__* host; } ;
struct TYPE_4__ {int host_no; } ;
typedef TYPE_2__ FAS216_Info ;


 int printk (char*,int ,char,char*) ;
 int vsnprintf (char*,int,char*,int ) ;

__attribute__((used)) static void
fas216_do_log(FAS216_Info *info, char target, char *fmt, va_list ap)
{
 static char buf[1024];

 vsnprintf(buf, sizeof(buf), fmt, ap);
 printk("scsi%d.%c: %s", info->host->host_no, target, buf);
}
