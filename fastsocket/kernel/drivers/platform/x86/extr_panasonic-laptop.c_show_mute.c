
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcc_acpi {int* sinf; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct acpi_device {int dummy; } ;
typedef int ssize_t ;


 int EIO ;
 int PAGE_SIZE ;
 size_t SINF_MUTE ;
 struct pcc_acpi* acpi_driver_data (struct acpi_device*) ;
 int acpi_pcc_retrieve_biosdata (struct pcc_acpi*,int*) ;
 int snprintf (char*,int ,char*,int) ;
 struct acpi_device* to_acpi_device (struct device*) ;

__attribute__((used)) static ssize_t show_mute(struct device *dev, struct device_attribute *attr,
    char *buf)
{
 struct acpi_device *acpi = to_acpi_device(dev);
 struct pcc_acpi *pcc = acpi_driver_data(acpi);

 if (!acpi_pcc_retrieve_biosdata(pcc, pcc->sinf))
  return -EIO;

 return snprintf(buf, PAGE_SIZE, "%u\n", pcc->sinf[SINF_MUTE]);
}
