
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct firedtv {int isochannel; int subunit; TYPE_1__* backend; } ;
struct dvb_frontend {struct firedtv* sec_priv; } ;
struct TYPE_2__ {int (* stop_iso ) (struct firedtv*) ;} ;


 int cmp_break_pp_connection (struct firedtv*,int ,int) ;
 int stub1 (struct firedtv*) ;

__attribute__((used)) static int fdtv_sleep(struct dvb_frontend *fe)
{
 struct firedtv *fdtv = fe->sec_priv;

 fdtv->backend->stop_iso(fdtv);
 cmp_break_pp_connection(fdtv, fdtv->subunit, fdtv->isochannel);
 fdtv->isochannel = -1;
 return 0;
}
