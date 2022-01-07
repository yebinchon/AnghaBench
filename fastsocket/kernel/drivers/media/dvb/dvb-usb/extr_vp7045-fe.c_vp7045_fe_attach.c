
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct vp7045_fe_state* demodulator_priv; int ops; } ;
struct vp7045_fe_state {struct dvb_frontend fe; struct dvb_usb_device* d; } ;
struct dvb_usb_device {int dummy; } ;
struct dvb_frontend_ops {int dummy; } ;


 int GFP_KERNEL ;
 struct vp7045_fe_state* kzalloc (int,int ) ;
 int memcpy (int *,int *,int) ;
 int vp7045_fe_ops ;

struct dvb_frontend * vp7045_fe_attach(struct dvb_usb_device *d)
{
 struct vp7045_fe_state *s = kzalloc(sizeof(struct vp7045_fe_state), GFP_KERNEL);
 if (s == ((void*)0))
  goto error;

 s->d = d;
 memcpy(&s->fe.ops, &vp7045_fe_ops, sizeof(struct dvb_frontend_ops));
 s->fe.demodulator_priv = s;

 return &s->fe;
error:
 return ((void*)0);
}
