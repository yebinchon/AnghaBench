
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend_tune_settings {int min_delay_ms; int step_size; scalar_t__ max_drift; } ;
struct dvb_frontend {int dummy; } ;


 int sms_debug (char*) ;

__attribute__((used)) static int smsdvb_get_tune_settings(struct dvb_frontend *fe,
        struct dvb_frontend_tune_settings *tune)
{
 sms_debug("");

 tune->min_delay_ms = 400;
 tune->step_size = 250000;
 tune->max_drift = 0;
 return 0;
}
