
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ hotkey_tablet; } ;


 int SW_TABLET_MODE ;
 int hotkey_get_tablet_mode (int*) ;
 int input_report_switch (int ,int ,int) ;
 int input_sync (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__ tp_features ;
 int tpacpi_inputdev ;
 int tpacpi_inputdev_send_mutex ;

__attribute__((used)) static void tpacpi_input_send_tabletsw(void)
{
 int state;

 if (tp_features.hotkey_tablet &&
     !hotkey_get_tablet_mode(&state)) {
  mutex_lock(&tpacpi_inputdev_send_mutex);

  input_report_switch(tpacpi_inputdev,
        SW_TABLET_MODE, !!state);
  input_sync(tpacpi_inputdev);

  mutex_unlock(&tpacpi_inputdev_send_mutex);
 }
}
