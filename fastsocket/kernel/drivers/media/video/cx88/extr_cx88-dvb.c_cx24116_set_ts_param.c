
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_frontend {TYPE_1__* dvb; } ;
struct cx8802_dev {int ts_gen_cntrl; } ;
struct TYPE_2__ {struct cx8802_dev* priv; } ;



__attribute__((used)) static int cx24116_set_ts_param(struct dvb_frontend *fe,
 int is_punctured)
{
 struct cx8802_dev *dev = fe->dvb->priv;
 dev->ts_gen_cntrl = 0x2;

 return 0;
}
