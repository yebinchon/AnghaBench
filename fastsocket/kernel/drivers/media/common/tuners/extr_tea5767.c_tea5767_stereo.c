
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tea5767_priv {int dummy; } ;
struct dvb_frontend {struct tea5767_priv* tuner_priv; } ;


 char const TEA5767_STEREO_MASK ;
 int V4L2_TUNER_SUB_STEREO ;
 int tuner_dbg (char*,int) ;

__attribute__((used)) static inline int tea5767_stereo(struct dvb_frontend *fe, const char *buffer)
{
 struct tea5767_priv *priv = fe->tuner_priv;

 int stereo = buffer[2] & TEA5767_STEREO_MASK;

 tuner_dbg("Radio ST GET = %02x\n", stereo);

 return (stereo ? V4L2_TUNER_SUB_STEREO : 0);
}
