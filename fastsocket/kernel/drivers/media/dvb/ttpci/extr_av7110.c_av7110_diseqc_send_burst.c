
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_frontend {TYPE_1__* dvb; } ;
struct av7110 {int dummy; } ;
typedef int fe_sec_mini_cmd_t ;
struct TYPE_2__ {struct av7110* priv; } ;


 int av7110_diseqc_send (struct av7110*,int ,int *,int ) ;

__attribute__((used)) static int av7110_diseqc_send_burst(struct dvb_frontend* fe,
        fe_sec_mini_cmd_t minicmd)
{
 struct av7110* av7110 = fe->dvb->priv;

 return av7110_diseqc_send(av7110, 0, ((void*)0), minicmd);
}
