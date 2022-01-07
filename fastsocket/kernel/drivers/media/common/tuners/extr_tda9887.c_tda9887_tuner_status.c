
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda9887_priv {int * data; } ;
struct dvb_frontend {struct tda9887_priv* analog_demod_priv; } ;


 int tuner_info (char*,int ,int ,int ) ;

__attribute__((used)) static void tda9887_tuner_status(struct dvb_frontend *fe)
{
 struct tda9887_priv *priv = fe->analog_demod_priv;
 tuner_info("Data bytes: b=0x%02x c=0x%02x e=0x%02x\n",
     priv->data[1], priv->data[2], priv->data[3]);
}
