
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ap_device {int dummy; } ;


 int ap_poll_read (struct ap_device*,unsigned long*) ;
 int ap_poll_write (struct ap_device*,unsigned long*) ;

__attribute__((used)) static inline int ap_poll_queue(struct ap_device *ap_dev, unsigned long *flags)
{
 int rc;

 rc = ap_poll_read(ap_dev, flags);
 if (rc)
  return rc;
 return ap_poll_write(ap_dev, flags);
}
