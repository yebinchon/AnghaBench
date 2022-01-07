
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subchannel_id {int dummy; } ;
struct subchannel {int dev; } ;


 scalar_t__ IS_ERR (struct subchannel*) ;
 int PTR_ERR (struct subchannel*) ;
 struct subchannel* cio_get_console_subchannel () ;
 scalar_t__ cio_is_console (struct subchannel_id) ;
 struct subchannel* css_alloc_subchannel (struct subchannel_id) ;
 int css_register_subchannel (struct subchannel*) ;
 int put_device (int *) ;

int css_probe_device(struct subchannel_id schid)
{
 int ret;
 struct subchannel *sch;

 if (cio_is_console(schid))
  sch = cio_get_console_subchannel();
 else {
  sch = css_alloc_subchannel(schid);
  if (IS_ERR(sch))
   return PTR_ERR(sch);
 }
 ret = css_register_subchannel(sch);
 if (ret) {
  if (!cio_is_console(schid))
   put_device(&sch->dev);
 }
 return ret;
}
