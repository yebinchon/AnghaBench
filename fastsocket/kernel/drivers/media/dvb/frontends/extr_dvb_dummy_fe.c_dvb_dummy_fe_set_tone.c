
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {int dummy; } ;
typedef int fe_sec_tone_mode_t ;



__attribute__((used)) static int dvb_dummy_fe_set_tone(struct dvb_frontend* fe, fe_sec_tone_mode_t tone)
{
 return 0;
}
