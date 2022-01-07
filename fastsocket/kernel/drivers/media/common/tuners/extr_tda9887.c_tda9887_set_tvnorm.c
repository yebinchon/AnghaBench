
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tvnorm {int std; char b; char c; char e; int name; } ;
struct tda9887_priv {char* data; scalar_t__ mode; scalar_t__ audmode; int std; } ;
struct dvb_frontend {struct tda9887_priv* analog_demod_priv; } ;


 int ARRAY_SIZE (struct tvnorm*) ;
 scalar_t__ V4L2_TUNER_MODE_MONO ;
 scalar_t__ V4L2_TUNER_RADIO ;
 struct tvnorm radio_mono ;
 struct tvnorm radio_stereo ;
 int tuner_dbg (char*,...) ;
 struct tvnorm* tvnorms ;

__attribute__((used)) static int tda9887_set_tvnorm(struct dvb_frontend *fe)
{
 struct tda9887_priv *priv = fe->analog_demod_priv;
 struct tvnorm *norm = ((void*)0);
 char *buf = priv->data;
 int i;

 if (priv->mode == V4L2_TUNER_RADIO) {
  if (priv->audmode == V4L2_TUNER_MODE_MONO)
   norm = &radio_mono;
  else
   norm = &radio_stereo;
 } else {
  for (i = 0; i < ARRAY_SIZE(tvnorms); i++) {
   if (tvnorms[i].std & priv->std) {
    norm = tvnorms+i;
    break;
   }
  }
 }
 if (((void*)0) == norm) {
  tuner_dbg("Unsupported tvnorm entry - audio muted\n");
  return -1;
 }

 tuner_dbg("configure for: %s\n", norm->name);
 buf[1] = norm->b;
 buf[2] = norm->c;
 buf[3] = norm->e;
 return 0;
}
