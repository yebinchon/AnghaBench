
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct pcap_regulator {int* voltage_table; } ;


 size_t rdev_get_id (struct regulator_dev*) ;
 struct pcap_regulator* vreg_table ;

__attribute__((used)) static int pcap_regulator_list_voltage(struct regulator_dev *rdev,
       unsigned int index)
{
 struct pcap_regulator *vreg = &vreg_table[rdev_get_id(rdev)];

 return vreg->voltage_table[index] * 1000;
}
