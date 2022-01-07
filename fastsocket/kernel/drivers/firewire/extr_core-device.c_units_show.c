
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_device {int * config_rom; } ;
struct fw_csr_iterator {scalar_t__ p; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int CSR_DIRECTORY ;
 int CSR_UNIT ;
 int PAGE_SIZE ;
 int down_read (int *) ;
 int fw_csr_iterator_init (struct fw_csr_iterator*,int *) ;
 scalar_t__ fw_csr_iterator_next (struct fw_csr_iterator*,int*,int*) ;
 struct fw_device* fw_device (struct device*) ;
 int fw_device_rwsem ;
 scalar_t__ units_sprintf (char*,scalar_t__) ;
 int up_read (int *) ;

__attribute__((used)) static ssize_t units_show(struct device *dev,
     struct device_attribute *attr, char *buf)
{
 struct fw_device *device = fw_device(dev);
 struct fw_csr_iterator ci;
 int key, value, i = 0;

 down_read(&fw_device_rwsem);
 fw_csr_iterator_init(&ci, &device->config_rom[5]);
 while (fw_csr_iterator_next(&ci, &key, &value)) {
  if (key != (CSR_UNIT | CSR_DIRECTORY))
   continue;
  i += units_sprintf(&buf[i], ci.p + value - 1);
  if (i >= PAGE_SIZE - (8 + 1 + 8 + 1))
   break;
 }
 up_read(&fw_device_rwsem);

 if (i)
  buf[i - 1] = '\n';

 return i;
}
