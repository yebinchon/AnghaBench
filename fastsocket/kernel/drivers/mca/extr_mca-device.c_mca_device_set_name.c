
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mca_device {int name; } ;


 int strlcpy (int ,char const*,int) ;

void mca_device_set_name(struct mca_device *mca_dev, const char *name)
{
 if(!mca_dev)
  return;

 strlcpy(mca_dev->name, name, sizeof(mca_dev->name));
}
