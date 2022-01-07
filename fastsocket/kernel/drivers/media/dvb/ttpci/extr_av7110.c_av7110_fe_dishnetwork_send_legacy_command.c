
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_frontend {TYPE_1__* dvb; } ;
struct av7110 {int (* fe_dishnetwork_send_legacy_command ) (struct dvb_frontend*,unsigned long) ;} ;
struct TYPE_2__ {struct av7110* priv; } ;


 int av7110_fe_lock_fix (struct av7110*,int ) ;
 int stub1 (struct dvb_frontend*,unsigned long) ;

__attribute__((used)) static int av7110_fe_dishnetwork_send_legacy_command(struct dvb_frontend* fe, unsigned long cmd)
{
 struct av7110* av7110 = fe->dvb->priv;

 int ret = av7110_fe_lock_fix(av7110, 0);
 if (!ret)
  ret = av7110->fe_dishnetwork_send_legacy_command(fe, cmd);
 return ret;
}
