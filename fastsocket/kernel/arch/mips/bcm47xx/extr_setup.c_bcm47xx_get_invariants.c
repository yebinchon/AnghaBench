
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u16 ;
struct ssb_sprom {int dummy; } ;
struct TYPE_2__ {int revision; void* et1mdcport; void* et0mdcport; void* et1phyaddr; void* et0phyaddr; int et1mac; int et0mac; void* rev; void* type; } ;
struct ssb_init_invariants {TYPE_1__ sprom; TYPE_1__ boardinfo; } ;
struct ssb_bus {int dummy; } ;
struct ssb_boardinfo {int dummy; } ;
typedef int buf ;


 scalar_t__ cfe_getenv (char*,char*,int) ;
 int memset (TYPE_1__*,int ,int) ;
 void* simple_strtoul (char*,int *,int) ;
 int str2eaddr (char*,int ) ;

__attribute__((used)) static int bcm47xx_get_invariants(struct ssb_bus *bus,
       struct ssb_init_invariants *iv)
{
 char buf[100];


 memset(&(iv->boardinfo), 0 , sizeof(struct ssb_boardinfo));

 if (cfe_getenv("boardvendor", buf, sizeof(buf)) >= 0)
  iv->boardinfo.type = (u16)simple_strtoul(buf, ((void*)0), 0);
 if (cfe_getenv("boardtype", buf, sizeof(buf)) >= 0)
  iv->boardinfo.type = (u16)simple_strtoul(buf, ((void*)0), 0);
 if (cfe_getenv("boardrev", buf, sizeof(buf)) >= 0)
  iv->boardinfo.rev = (u16)simple_strtoul(buf, ((void*)0), 0);


 memset(&(iv->sprom), 0, sizeof(struct ssb_sprom));
 iv->sprom.revision = 3;

 if (cfe_getenv("et0macaddr", buf, sizeof(buf)) >= 0)
  str2eaddr(buf, iv->sprom.et0mac);
 if (cfe_getenv("et1macaddr", buf, sizeof(buf)) >= 0)
  str2eaddr(buf, iv->sprom.et1mac);
 if (cfe_getenv("et0phyaddr", buf, sizeof(buf)) >= 0)
  iv->sprom.et0phyaddr = simple_strtoul(buf, ((void*)0), 10);
 if (cfe_getenv("et1phyaddr", buf, sizeof(buf)) >= 0)
  iv->sprom.et1phyaddr = simple_strtoul(buf, ((void*)0), 10);
 if (cfe_getenv("et0mdcport", buf, sizeof(buf)) >= 0)
  iv->sprom.et0mdcport = simple_strtoul(buf, ((void*)0), 10);
 if (cfe_getenv("et1mdcport", buf, sizeof(buf)) >= 0)
  iv->sprom.et1mdcport = simple_strtoul(buf, ((void*)0), 10);

 return 0;
}
