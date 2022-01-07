
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int serialNo; } ;
typedef TYPE_1__* PISDN_ADAPTER ;


 int sprintf (char*,char*,int,...) ;

void diva_get_vserial_number(PISDN_ADAPTER IoAdapter, char *buf)
{
 int contr = 0;

 if ((contr = ((IoAdapter->serialNo & 0xff000000) >> 24))) {
  sprintf(buf, "%d-%d",
   IoAdapter->serialNo & 0x00ffffff, contr + 1);
 } else {
  sprintf(buf, "%d", IoAdapter->serialNo);
 }
}
