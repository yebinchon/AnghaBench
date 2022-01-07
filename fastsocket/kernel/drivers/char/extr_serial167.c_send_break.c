
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cyclades_port {int x_break; int xmit_cnt; } ;


 int start_xmit (struct cyclades_port*) ;

__attribute__((used)) static void send_break(struct cyclades_port *info, int duration)
{


 info->x_break = duration;
 if (!info->xmit_cnt) {
  start_xmit(info);
 }
}
