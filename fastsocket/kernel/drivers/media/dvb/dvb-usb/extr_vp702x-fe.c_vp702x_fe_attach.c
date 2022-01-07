
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct vp702x_fe_state* demodulator_priv; int ops; } ;
struct vp702x_fe_state {int* lnb_buf; struct dvb_frontend fe; struct dvb_usb_device* d; } ;
struct dvb_usb_device {int dummy; } ;
struct dvb_frontend_ops {int dummy; } ;


 int GFP_KERNEL ;
 int SET_LNB_POWER ;
 struct vp702x_fe_state* kzalloc (int,int ) ;
 int memcpy (int *,int *,int) ;
 int vp702x_fe_ops ;

struct dvb_frontend * vp702x_fe_attach(struct dvb_usb_device *d)
{
 struct vp702x_fe_state *s = kzalloc(sizeof(struct vp702x_fe_state), GFP_KERNEL);
 if (s == ((void*)0))
  goto error;

 s->d = d;

 memcpy(&s->fe.ops,&vp702x_fe_ops,sizeof(struct dvb_frontend_ops));
 s->fe.demodulator_priv = s;

 s->lnb_buf[1] = SET_LNB_POWER;
 s->lnb_buf[3] = 0xff;

 return &s->fe;
error:
 return ((void*)0);
}
