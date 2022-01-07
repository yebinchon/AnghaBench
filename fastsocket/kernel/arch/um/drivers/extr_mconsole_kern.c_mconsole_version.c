
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mc_request {int dummy; } ;
struct TYPE_2__ {char* sysname; char* nodename; char* release; char* version; char* machine; } ;


 int mconsole_reply (struct mc_request*,char*,int ,int ) ;
 int sprintf (char*,char*,char*,char*,char*,char*,char*) ;
 TYPE_1__* utsname () ;

void mconsole_version(struct mc_request *req)
{
 char version[256];

 sprintf(version, "%s %s %s %s %s", utsname()->sysname,
  utsname()->nodename, utsname()->release, utsname()->version,
  utsname()->machine);
 mconsole_reply(req, version, 0, 0);
}
