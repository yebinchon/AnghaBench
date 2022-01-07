
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int g_up_monitor_pid ;
 int snprintf (char*,int,char*,int ) ;

__attribute__((used)) static int up_show_monitor_pid(char *page, char **start, off_t offset,
 int count, int *eof, void *data)
{
 return snprintf(page, count, "%lu\n", g_up_monitor_pid);
}
