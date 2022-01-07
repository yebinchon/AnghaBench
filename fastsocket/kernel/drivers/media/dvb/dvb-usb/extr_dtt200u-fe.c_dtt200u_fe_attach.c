
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_usb_device {int dummy; } ;
struct dvb_frontend_ops {int dummy; } ;
struct dvb_frontend {struct dtt200u_fe_state* demodulator_priv; int ops; } ;
struct dtt200u_fe_state {struct dvb_frontend frontend; struct dvb_usb_device* d; } ;


 int GFP_KERNEL ;
 int deb_info (char*) ;
 int dtt200u_fe_ops ;
 struct dtt200u_fe_state* kzalloc (int,int ) ;
 int memcpy (int *,int *,int) ;

struct dvb_frontend* dtt200u_fe_attach(struct dvb_usb_device *d)
{
 struct dtt200u_fe_state* state = ((void*)0);


 state = kzalloc(sizeof(struct dtt200u_fe_state), GFP_KERNEL);
 if (state == ((void*)0))
  goto error;

 deb_info("attaching frontend dtt200u\n");

 state->d = d;

 memcpy(&state->frontend.ops,&dtt200u_fe_ops,sizeof(struct dvb_frontend_ops));
 state->frontend.demodulator_priv = state;

 return &state->frontend;
error:
 return ((void*)0);
}
