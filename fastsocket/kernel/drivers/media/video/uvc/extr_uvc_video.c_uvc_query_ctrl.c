
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvc_device {int dummy; } ;
typedef int __u8 ;
typedef int __u16 ;


 int EIO ;
 int KERN_ERR ;
 int UVC_CTRL_CONTROL_TIMEOUT ;
 int __uvc_query_ctrl (struct uvc_device*,int ,int ,int ,int ,void*,int,int ) ;
 int uvc_printk (int ,char*,int ,int ,int ,int,int) ;
 int uvc_query_name (int ) ;

int uvc_query_ctrl(struct uvc_device *dev, __u8 query, __u8 unit,
   __u8 intfnum, __u8 cs, void *data, __u16 size)
{
 int ret;

 ret = __uvc_query_ctrl(dev, query, unit, intfnum, cs, data, size,
    UVC_CTRL_CONTROL_TIMEOUT);
 if (ret != size) {
  uvc_printk(KERN_ERR, "Failed to query (%s) UVC control %u on "
   "unit %u: %d (exp. %u).\n", uvc_query_name(query), cs,
   unit, ret, size);
  return -EIO;
 }

 return 0;
}
