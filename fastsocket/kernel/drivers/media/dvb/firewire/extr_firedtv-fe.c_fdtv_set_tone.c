
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firedtv {int tone; } ;
struct dvb_frontend {struct firedtv* sec_priv; } ;
typedef int fe_sec_tone_mode_t ;



__attribute__((used)) static int fdtv_set_tone(struct dvb_frontend *fe, fe_sec_tone_mode_t tone)
{
 struct firedtv *fdtv = fe->sec_priv;

 fdtv->tone = tone;
 return 0;
}
