
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct qla_hw_data {int dummy; } ;


 scalar_t__ IS_QLA2100 (struct qla_hw_data*) ;
 scalar_t__ IS_QLA2200 (struct qla_hw_data*) ;
 size_t LS_UNKNOWN ;

const char *
qla2x00_get_link_speed_str(struct qla_hw_data *ha, uint16_t speed)
{
 static const char * const link_speeds[] = {
  "1", "2", "?", "4", "8", "16", "10"
 };

 if (IS_QLA2100(ha) || IS_QLA2200(ha))
  return link_speeds[0];
 else if (speed == 0x13)
  return link_speeds[6];
 else if (speed < 6)
  return link_speeds[speed];
 else
  return link_speeds[LS_UNKNOWN];
}
