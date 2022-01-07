
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnp_id {char* id; struct pnp_id* next; } ;
struct pnp_dev {struct pnp_id* id; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,char*) ;
 struct pnp_dev* to_pnp_dev (struct device*) ;

__attribute__((used)) static ssize_t pnp_show_current_ids(struct device *dmdev,
        struct device_attribute *attr, char *buf)
{
 char *str = buf;
 struct pnp_dev *dev = to_pnp_dev(dmdev);
 struct pnp_id *pos = dev->id;

 while (pos) {
  str += sprintf(str, "%s\n", pos->id);
  pos = pos->next;
 }
 return (str - buf);
}
