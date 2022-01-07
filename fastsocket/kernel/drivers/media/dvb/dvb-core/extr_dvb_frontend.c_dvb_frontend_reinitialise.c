
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend_private {int reinitialise; } ;
struct dvb_frontend {struct dvb_frontend_private* frontend_priv; } ;


 int dvb_frontend_wakeup (struct dvb_frontend*) ;

void dvb_frontend_reinitialise(struct dvb_frontend *fe)
{
 struct dvb_frontend_private *fepriv = fe->frontend_priv;

 fepriv->reinitialise = 1;
 dvb_frontend_wakeup(fe);
}
