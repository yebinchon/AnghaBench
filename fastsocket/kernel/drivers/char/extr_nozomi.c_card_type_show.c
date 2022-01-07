
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nozomi {int card_type; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct nozomi* pci_get_drvdata (int ) ;
 int sprintf (char*,char*,int) ;
 int to_pci_dev (struct device*) ;

__attribute__((used)) static ssize_t card_type_show(struct device *dev, struct device_attribute *attr,
     char *buf)
{
 const struct nozomi *dc = pci_get_drvdata(to_pci_dev(dev));

 return sprintf(buf, "%d\n", dc->card_type);
}
