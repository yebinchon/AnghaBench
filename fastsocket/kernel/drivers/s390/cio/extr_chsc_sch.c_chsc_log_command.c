
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int code; } ;
struct chsc_async_area {TYPE_1__ header; } ;


 int CHSC_LOG (int ,char*) ;
 int CHSC_LOG_HEX (int ,struct chsc_async_area*,int) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static void chsc_log_command(struct chsc_async_area *chsc_area)
{
 char dbf[10];

 sprintf(dbf, "CHSC:%x", chsc_area->header.code);
 CHSC_LOG(0, dbf);
 CHSC_LOG_HEX(0, chsc_area, 32);
}
