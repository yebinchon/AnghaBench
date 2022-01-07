
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct baycom_state {int options; } ;


 int BAYCOM_OPTIONS_SOFTDCD ;
 int strchr (char const*,char) ;
 int strncmp (char const*,char*,int) ;

__attribute__((used)) static int baycom_setmode(struct baycom_state *bc, const char *modestr)
{
 if (!strncmp(modestr, "picpar", 6))
  bc->options = 0;
 else if (!strncmp(modestr, "par96", 5))
  bc->options = BAYCOM_OPTIONS_SOFTDCD;
 else
  bc->options = !!strchr(modestr, '*');
 return 0;
}
