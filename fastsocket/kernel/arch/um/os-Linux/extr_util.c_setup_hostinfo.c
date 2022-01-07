
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utsname {char* sysname; char* nodename; char* release; char* version; char* machine; } ;


 int snprintf (char*,int,char*,char*,char*,char*,char*,char*) ;
 int uname (struct utsname*) ;

void setup_hostinfo(char *buf, int len)
{
 struct utsname host;

 uname(&host);
 snprintf(buf, len, "%s %s %s %s %s", host.sysname, host.nodename,
   host.release, host.version, host.machine);
}
