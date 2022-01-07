
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct regulator_dev {int dummy; } ;
struct pcap_regulator {int n_voltages; int* voltage_table; int index; int reg; } ;


 int ezx_pcap_read (void*,int ,int*) ;
 void* rdev_get_drvdata (struct regulator_dev*) ;
 size_t rdev_get_id (struct regulator_dev*) ;
 struct pcap_regulator* vreg_table ;

__attribute__((used)) static int pcap_regulator_get_voltage(struct regulator_dev *rdev)
{
 struct pcap_regulator *vreg = &vreg_table[rdev_get_id(rdev)];
 void *pcap = rdev_get_drvdata(rdev);
 u32 tmp;
 int mV;

 if (vreg->n_voltages == 1)
  return vreg->voltage_table[0] * 1000;

 ezx_pcap_read(pcap, vreg->reg, &tmp);
 tmp = ((tmp >> vreg->index) & (vreg->n_voltages - 1));
 mV = vreg->voltage_table[tmp];

 return mV * 1000;
}
