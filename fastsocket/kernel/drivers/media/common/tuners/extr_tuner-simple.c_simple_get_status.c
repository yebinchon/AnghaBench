
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int * adap; } ;
struct tuner_simple_priv {int type; TYPE_1__ i2c_props; } ;
struct dvb_frontend {struct tuner_simple_priv* tuner_priv; } ;


 int EINVAL ;
 int TUNER_STATUS_LOCKED ;
 int TUNER_STATUS_STEREO ;
 int tuner_afcstatus (int) ;
 int tuner_dbg (char*,int ) ;
 scalar_t__ tuner_islocked (int) ;
 int tuner_read_status (struct dvb_frontend*) ;
 scalar_t__ tuner_stereo (int ,int) ;

__attribute__((used)) static int simple_get_status(struct dvb_frontend *fe, u32 *status)
{
 struct tuner_simple_priv *priv = fe->tuner_priv;
 int tuner_status;

 if (priv->i2c_props.adap == ((void*)0))
  return -EINVAL;

 tuner_status = tuner_read_status(fe);

 *status = 0;

 if (tuner_islocked(tuner_status))
  *status = TUNER_STATUS_LOCKED;
 if (tuner_stereo(priv->type, tuner_status))
  *status |= TUNER_STATUS_STEREO;

 tuner_dbg("AFC Status: %d\n", tuner_afcstatus(tuner_status));

 return 0;
}
