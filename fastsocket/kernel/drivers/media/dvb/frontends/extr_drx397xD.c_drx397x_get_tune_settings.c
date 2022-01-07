
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend_tune_settings {int min_delay_ms; scalar_t__ max_drift; scalar_t__ step_size; } ;
struct dvb_frontend {int dummy; } ;



__attribute__((used)) static int drx397x_get_tune_settings(struct dvb_frontend *fe,
         struct dvb_frontend_tune_settings
         *fe_tune_settings)
{
 fe_tune_settings->min_delay_ms = 10000;
 fe_tune_settings->step_size = 0;
 fe_tune_settings->max_drift = 0;

 return 0;
}
