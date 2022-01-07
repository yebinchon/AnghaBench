
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct microtune_priv {int dummy; } ;
struct dvb_frontend {struct microtune_priv* tuner_priv; } ;
struct analog_parameters {int std; int frequency; } ;


 int V4L2_STD_525_60 ;
 int mt2032_set_if_freq (struct dvb_frontend*,int,int,int,int,int) ;
 int tuner_dbg (char*) ;

__attribute__((used)) static int mt2032_set_radio_freq(struct dvb_frontend *fe,
     struct analog_parameters *params)
{
 struct microtune_priv *priv = fe->tuner_priv;
 int if2;

 if (params->std & V4L2_STD_525_60) {
  tuner_dbg("pinnacle ntsc\n");
  if2 = 41300 * 1000;
 } else {
  tuner_dbg("pinnacle pal\n");
  if2 = 33300 * 1000;
 }


 mt2032_set_if_freq(fe, params->frequency * 125 / 2,
      1085*1000*1000,if2,if2,if2);

 return 0;
}
