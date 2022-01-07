
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int dummy; } ;
struct k8temp_data {int valid; int sensorsp; int update_lock; scalar_t__ last_updated; int ** temp; } ;
struct device {int dummy; } ;


 scalar_t__ HZ ;
 int REG_TEMP ;
 int SEL_CORE ;
 int SEL_PLACE ;
 struct k8temp_data* dev_get_drvdata (struct device*) ;
 scalar_t__ jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pci_read_config_byte (struct pci_dev*,int ,int*) ;
 int pci_read_config_dword (struct pci_dev*,int ,int *) ;
 int pci_write_config_byte (struct pci_dev*,int ,int) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;
 struct pci_dev* to_pci_dev (struct device*) ;

__attribute__((used)) static struct k8temp_data *k8temp_update_device(struct device *dev)
{
 struct k8temp_data *data = dev_get_drvdata(dev);
 struct pci_dev *pdev = to_pci_dev(dev);
 u8 tmp;

 mutex_lock(&data->update_lock);

 if (!data->valid
     || time_after(jiffies, data->last_updated + HZ)) {
  pci_read_config_byte(pdev, REG_TEMP, &tmp);
  tmp &= ~(SEL_PLACE | SEL_CORE);
  pci_write_config_byte(pdev, REG_TEMP, tmp);
  pci_read_config_dword(pdev, REG_TEMP, &data->temp[0][0]);

  if (data->sensorsp & SEL_PLACE) {
   tmp |= SEL_PLACE;
   pci_write_config_byte(pdev, REG_TEMP, tmp);
   pci_read_config_dword(pdev, REG_TEMP,
           &data->temp[0][1]);
  }

  if (data->sensorsp & SEL_CORE) {
   tmp &= ~SEL_PLACE;
   tmp |= SEL_CORE;
   pci_write_config_byte(pdev, REG_TEMP, tmp);
   pci_read_config_dword(pdev, REG_TEMP,
           &data->temp[1][0]);

   if (data->sensorsp & SEL_PLACE) {
    tmp |= SEL_PLACE;
    pci_write_config_byte(pdev, REG_TEMP, tmp);
    pci_read_config_dword(pdev, REG_TEMP,
            &data->temp[1][1]);
   }
  }

  data->last_updated = jiffies;
  data->valid = 1;
 }

 mutex_unlock(&data->update_lock);
 return data;
}
