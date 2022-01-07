
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firedtv_tuner_status {int ca_initialization_status; scalar_t__ ca_error_flag; int ca_dvb_flag; int ca_module_present_status; } ;



__attribute__((used)) static int fdtv_ca_ready(struct firedtv_tuner_status *stat)
{
 return stat->ca_initialization_status == 1 &&
        stat->ca_error_flag == 0 &&
        stat->ca_dvb_flag == 1 &&
        stat->ca_module_present_status == 1;
}
