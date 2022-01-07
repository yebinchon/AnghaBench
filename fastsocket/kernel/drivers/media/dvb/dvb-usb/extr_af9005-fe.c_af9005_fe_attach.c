
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_usb_device {int dummy; } ;
struct dvb_frontend_ops {int dummy; } ;
struct dvb_frontend {struct af9005_fe_state* demodulator_priv; int ops; } ;
struct af9005_fe_state {struct dvb_frontend frontend; scalar_t__ opened; struct dvb_usb_device* d; } ;


 int GFP_KERNEL ;
 int af9005_fe_ops ;
 int deb_info (char*) ;
 struct af9005_fe_state* kzalloc (int,int ) ;
 int memcpy (int *,int *,int) ;

struct dvb_frontend *af9005_fe_attach(struct dvb_usb_device *d)
{
 struct af9005_fe_state *state = ((void*)0);


 state = kzalloc(sizeof(struct af9005_fe_state), GFP_KERNEL);
 if (state == ((void*)0))
  goto error;

 deb_info("attaching frontend af9005\n");

 state->d = d;
 state->opened = 0;

 memcpy(&state->frontend.ops, &af9005_fe_ops,
        sizeof(struct dvb_frontend_ops));
 state->frontend.demodulator_priv = state;

 return &state->frontend;
      error:
 return ((void*)0);
}
