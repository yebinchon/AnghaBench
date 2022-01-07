
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend_private {int wakeup; int wait_queue; } ;
struct dvb_frontend {struct dvb_frontend_private* frontend_priv; } ;


 int wake_up_interruptible (int *) ;

__attribute__((used)) static void dvb_frontend_wakeup(struct dvb_frontend *fe)
{
 struct dvb_frontend_private *fepriv = fe->frontend_priv;

 fepriv->wakeup = 1;
 wake_up_interruptible(&fepriv->wait_queue);
}
