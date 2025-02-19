
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct pcap_regulator {int en; int reg; } ;


 int EINVAL ;
 int NA ;
 int ezx_pcap_set_bits (void*,int ,int,int) ;
 void* rdev_get_drvdata (struct regulator_dev*) ;
 size_t rdev_get_id (struct regulator_dev*) ;
 struct pcap_regulator* vreg_table ;

__attribute__((used)) static int pcap_regulator_enable(struct regulator_dev *rdev)
{
 struct pcap_regulator *vreg = &vreg_table[rdev_get_id(rdev)];
 void *pcap = rdev_get_drvdata(rdev);

 if (vreg->en == NA)
  return -EINVAL;

 return ezx_pcap_set_bits(pcap, vreg->reg, 1 << vreg->en, 1 << vreg->en);
}
