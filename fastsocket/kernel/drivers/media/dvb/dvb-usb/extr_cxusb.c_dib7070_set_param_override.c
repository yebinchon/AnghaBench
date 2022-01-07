
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct dvb_usb_adapter {struct dib0700_adapter_state* priv; } ;
struct dvb_frontend_parameters {int frequency; } ;
struct dvb_frontend {TYPE_1__* dvb; } ;
struct dib0700_adapter_state {int (* set_param_save ) (struct dvb_frontend*,struct dvb_frontend_parameters*) ;} ;
struct TYPE_2__ {struct dvb_usb_adapter* priv; } ;


 int BAND_OF_FREQUENCY (int) ;


 int dib0070_wbd_offset (struct dvb_frontend*) ;
 int dib7000p_set_wbd_ref (struct dvb_frontend*,int) ;
 int stub1 (struct dvb_frontend*,struct dvb_frontend_parameters*) ;

__attribute__((used)) static int dib7070_set_param_override(struct dvb_frontend *fe,
          struct dvb_frontend_parameters *fep)
{
 struct dvb_usb_adapter *adap = fe->dvb->priv;
 struct dib0700_adapter_state *state = adap->priv;

 u16 offset;
 u8 band = BAND_OF_FREQUENCY(fep->frequency/1000);
 switch (band) {
 case 128: offset = 950; break;
 default:
 case 129: offset = 550; break;
 }

 dib7000p_set_wbd_ref(fe, offset + dib0070_wbd_offset(fe));

 return state->set_param_save(fe, fep);
}
