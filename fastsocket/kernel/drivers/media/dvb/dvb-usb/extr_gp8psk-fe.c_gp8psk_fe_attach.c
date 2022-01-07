
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct gp8psk_fe_state* demodulator_priv; int ops; } ;
struct gp8psk_fe_state {struct dvb_frontend fe; struct dvb_usb_device* d; } ;
struct dvb_usb_device {int dummy; } ;
struct dvb_frontend_ops {int dummy; } ;


 int GFP_KERNEL ;
 int gp8psk_fe_ops ;
 struct gp8psk_fe_state* kzalloc (int,int ) ;
 int memcpy (int *,int *,int) ;

struct dvb_frontend * gp8psk_fe_attach(struct dvb_usb_device *d)
{
 struct gp8psk_fe_state *s = kzalloc(sizeof(struct gp8psk_fe_state), GFP_KERNEL);
 if (s == ((void*)0))
  goto error;

 s->d = d;
 memcpy(&s->fe.ops, &gp8psk_fe_ops, sizeof(struct dvb_frontend_ops));
 s->fe.demodulator_priv = s;

 goto success;
error:
 return ((void*)0);
success:
 return &s->fe;
}
