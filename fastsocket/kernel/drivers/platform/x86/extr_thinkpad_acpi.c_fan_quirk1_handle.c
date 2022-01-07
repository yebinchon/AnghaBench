
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_2__ {scalar_t__ fan_ctrl_status_undef; } ;


 scalar_t__ TP_EC_FAN_AUTO ;
 scalar_t__ fan_control_initial_status ;
 TYPE_1__ tp_features ;
 scalar_t__ unlikely (scalar_t__) ;

__attribute__((used)) static void fan_quirk1_handle(u8 *fan_status)
{
 if (unlikely(tp_features.fan_ctrl_status_undef)) {
  if (*fan_status != fan_control_initial_status) {



   tp_features.fan_ctrl_status_undef = 0;
  } else {


   *fan_status = TP_EC_FAN_AUTO;
  }
 }
}
