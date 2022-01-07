
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_mbox {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
typedef int mbox_msg_t ;


 size_t EAGAIN ;
 int be32_to_cpu (int ) ;
 struct omap_mbox* dev_get_drvdata (struct device*) ;
 int omap_mbox_msg_send (struct omap_mbox*,int ,int *) ;

__attribute__((used)) static ssize_t
omap_mbox_write(struct device *dev, struct device_attribute *attr,
  const char * buf, size_t count)
{
 int ret;
 mbox_msg_t *p = (mbox_msg_t *)buf;
 struct omap_mbox *mbox = dev_get_drvdata(dev);

 for (; count >= sizeof(mbox_msg_t); count -= sizeof(mbox_msg_t)) {
  ret = omap_mbox_msg_send(mbox, be32_to_cpu(*p), ((void*)0));
  if (ret)
   return -EAGAIN;
  p++;
 }

 return (size_t)((char *)p - buf);
}
