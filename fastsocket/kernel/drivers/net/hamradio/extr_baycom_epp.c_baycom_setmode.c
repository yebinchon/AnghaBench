
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int intclk; int extmodem; int loopback; int fclk; int bps; } ;
struct baycom_state {TYPE_1__ cfg; } ;


 void* simple_strtoul (char const*,int *,int ) ;
 char* strstr (char const*,char*) ;

__attribute__((used)) static int baycom_setmode(struct baycom_state *bc, const char *modestr)
{
 const char *cp;

 if (strstr(modestr,"intclk"))
  bc->cfg.intclk = 1;
 if (strstr(modestr,"extclk"))
  bc->cfg.intclk = 0;
 if (strstr(modestr,"intmodem"))
  bc->cfg.extmodem = 0;
 if (strstr(modestr,"extmodem"))
  bc->cfg.extmodem = 1;
 if (strstr(modestr,"noloopback"))
  bc->cfg.loopback = 0;
 if (strstr(modestr,"loopback"))
  bc->cfg.loopback = 1;
 if ((cp = strstr(modestr,"fclk="))) {
  bc->cfg.fclk = simple_strtoul(cp+5, ((void*)0), 0);
  if (bc->cfg.fclk < 1000000)
   bc->cfg.fclk = 1000000;
  if (bc->cfg.fclk > 25000000)
   bc->cfg.fclk = 25000000;
 }
 if ((cp = strstr(modestr,"bps="))) {
  bc->cfg.bps = simple_strtoul(cp+4, ((void*)0), 0);
  if (bc->cfg.bps < 1000)
   bc->cfg.bps = 1000;
  if (bc->cfg.bps > 1500000)
   bc->cfg.bps = 1500000;
 }
 return 0;
}
