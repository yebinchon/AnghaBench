
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct af9005_fe_state* demodulator_priv; } ;
struct af9005_fe_state {scalar_t__ next_status_check; } ;


 int HZ ;
 scalar_t__ af9005_get_statistic (struct dvb_frontend*) ;
 int deb_info (char*) ;
 int err (char*) ;
 scalar_t__ jiffies ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;

__attribute__((used)) static int af9005_fe_refresh_state(struct dvb_frontend *fe)
{
 struct af9005_fe_state *state = fe->demodulator_priv;
 if (time_after(jiffies, state->next_status_check)) {
  deb_info("REFRESH STATE\n");


  if (af9005_get_statistic(fe))
   err("get_statistic_failed");
  state->next_status_check = jiffies + 250 * HZ / 1000;
 }
 return 0;
}
