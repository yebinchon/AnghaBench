
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tea5761_priv {int dummy; } ;
struct dvb_frontend {struct tea5761_priv* tuner_priv; } ;


 char const TEA5761_TUNCHECK_STEREO ;
 int V4L2_TUNER_SUB_STEREO ;
 int tuner_dbg (char*,int) ;

__attribute__((used)) static inline int tea5761_stereo(struct dvb_frontend *fe, const char *buffer)
{
 struct tea5761_priv *priv = fe->tuner_priv;

 int stereo = buffer[9] & TEA5761_TUNCHECK_STEREO;

 tuner_dbg("Radio ST GET = %02x\n", stereo);

 return (stereo ? V4L2_TUNER_SUB_STEREO : 0);
}
