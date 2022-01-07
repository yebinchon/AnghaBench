
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fst_port_info {scalar_t__ run; TYPE_1__* card; } ;
struct TYPE_2__ {scalar_t__ state; } ;


 int DBG_OPEN ;
 scalar_t__ FST_RUNNING ;
 int OPSTS_DTR ;
 int OPSTS_RTS ;
 int STOPPORT ;
 int dbg (int ,char*) ;
 int fst_issue_cmd (struct fst_port_info*,int ) ;
 int fst_op_lower (struct fst_port_info*,int) ;

__attribute__((used)) static void
fst_closeport(struct fst_port_info *port)
{
 if (port->card->state == FST_RUNNING) {
  if (port->run) {
   port->run = 0;
   fst_op_lower(port, OPSTS_RTS | OPSTS_DTR);

   fst_issue_cmd(port, STOPPORT);
  } else {
   dbg(DBG_OPEN, "close: port not running\n");
  }
 }
}
