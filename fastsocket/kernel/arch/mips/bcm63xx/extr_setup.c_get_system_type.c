
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int bcm63xx_get_cpu_id () ;
 int bcm63xx_get_cpu_rev () ;
 char* board_get_name () ;
 int snprintf (char*,int,char*,char*,int,int) ;

const char *get_system_type(void)
{
 static char buf[128];
 snprintf(buf, sizeof(buf), "bcm63xx/%s (0x%04x/0x%04X)",
   board_get_name(),
   bcm63xx_get_cpu_id(), bcm63xx_get_cpu_rev());
 return buf;
}
