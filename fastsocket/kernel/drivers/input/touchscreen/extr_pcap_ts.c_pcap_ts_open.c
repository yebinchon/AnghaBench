
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcap_ts {int work; int read_state; } ;
struct input_dev {int dummy; } ;


 int PCAP_ADC_TS_M_STANDBY ;
 struct pcap_ts* input_get_drvdata (struct input_dev*) ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static int pcap_ts_open(struct input_dev *dev)
{
 struct pcap_ts *pcap_ts = input_get_drvdata(dev);

 pcap_ts->read_state = PCAP_ADC_TS_M_STANDBY;
 schedule_delayed_work(&pcap_ts->work, 0);

 return 0;
}
