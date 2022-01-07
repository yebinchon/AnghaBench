
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qt1010_priv {int frequency; } ;
struct dvb_frontend {struct qt1010_priv* tuner_priv; } ;



__attribute__((used)) static int qt1010_get_frequency(struct dvb_frontend *fe, u32 *frequency)
{
 struct qt1010_priv *priv = fe->tuner_priv;
 *frequency = priv->frequency;
 return 0;
}
