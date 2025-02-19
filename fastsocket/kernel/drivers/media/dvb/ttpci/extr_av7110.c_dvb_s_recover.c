
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ msg_len; } ;
struct av7110 {int saved_fe_params; int fe; int saved_tone; int saved_minicmd; TYPE_1__ saved_master_cmd; int saved_voltage; } ;


 int av7110_fe_diseqc_send_burst (int ,int ) ;
 int av7110_fe_diseqc_send_master_cmd (int ,TYPE_1__*) ;
 int av7110_fe_init (int ) ;
 int av7110_fe_set_frontend (int ,int *) ;
 int av7110_fe_set_tone (int ,int ) ;
 int av7110_fe_set_voltage (int ,int ) ;
 int msleep (int) ;

__attribute__((used)) static void dvb_s_recover(struct av7110* av7110)
{
 av7110_fe_init(av7110->fe);

 av7110_fe_set_voltage(av7110->fe, av7110->saved_voltage);
 if (av7110->saved_master_cmd.msg_len) {
  msleep(20);
  av7110_fe_diseqc_send_master_cmd(av7110->fe, &av7110->saved_master_cmd);
 }
 msleep(20);
 av7110_fe_diseqc_send_burst(av7110->fe, av7110->saved_minicmd);
 msleep(20);
 av7110_fe_set_tone(av7110->fe, av7110->saved_tone);

 av7110_fe_set_frontend(av7110->fe, &av7110->saved_fe_params);
}
