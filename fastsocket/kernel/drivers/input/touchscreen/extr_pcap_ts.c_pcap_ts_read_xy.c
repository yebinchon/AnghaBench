
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u16 ;
struct pcap_ts {int read_state; TYPE_1__* input; int work; void* pressure; void* y; void* x; } ;
struct TYPE_4__ {int dev; } ;


 int ABS_PRESSURE ;
 int ABS_X ;
 int ABS_Y ;
 int BTN_TOUCH ;

 int PCAP_ADC_TS_M_STANDBY ;

 void* PRESSURE_MAX ;
 void* PRESSURE_MIN ;
 int SAMPLE_DELAY ;
 void* X_AXIS_MAX ;
 void* X_AXIS_MIN ;
 void* Y_AXIS_MAX ;
 void* Y_AXIS_MIN ;
 int dev_warn (int *,char*,int) ;
 int input_report_abs (TYPE_1__*,int ,void*) ;
 int input_report_key (TYPE_1__*,int ,int) ;
 int input_sync (TYPE_1__*) ;
 int msecs_to_jiffies (int ) ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static void pcap_ts_read_xy(void *data, u16 res[2])
{
 struct pcap_ts *pcap_ts = data;

 switch (pcap_ts->read_state) {
 case 129:

  if (res[0] > PRESSURE_MIN && res[0] < PRESSURE_MAX)
   pcap_ts->pressure = res[0];
  pcap_ts->read_state = 128;
  schedule_delayed_work(&pcap_ts->work, 0);
  break;
 case 128:
  pcap_ts->y = res[0];
  pcap_ts->x = res[1];
  if (pcap_ts->x <= X_AXIS_MIN || pcap_ts->x >= X_AXIS_MAX ||
      pcap_ts->y <= Y_AXIS_MIN || pcap_ts->y >= Y_AXIS_MAX) {

   input_report_abs(pcap_ts->input, ABS_PRESSURE, 0);
   input_report_key(pcap_ts->input, BTN_TOUCH, 0);

   pcap_ts->read_state = PCAP_ADC_TS_M_STANDBY;
   schedule_delayed_work(&pcap_ts->work, 0);
  } else {

   input_report_abs(pcap_ts->input, ABS_X, pcap_ts->x);
   input_report_abs(pcap_ts->input, ABS_Y, pcap_ts->y);
   input_report_key(pcap_ts->input, BTN_TOUCH, 1);
   input_report_abs(pcap_ts->input, ABS_PRESSURE,
      pcap_ts->pressure);


   pcap_ts->read_state = 129;
   schedule_delayed_work(&pcap_ts->work,
     msecs_to_jiffies(SAMPLE_DELAY));
  }
  input_sync(pcap_ts->input);
  break;
 default:
  dev_warn(&pcap_ts->input->dev,
    "pcap_ts: Warning, unhandled read_state %d\n",
    pcap_ts->read_state);
  break;
 }
}
