
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef scalar_t__ __u32 ;


 scalar_t__ sun4c_iobuffer_start ;
 int sun4c_unlockarea (char*,unsigned long) ;

__attribute__((used)) static void sun4c_release_scsi_one(struct device *dev, __u32 bufptr, unsigned long len)
{
 if (bufptr < sun4c_iobuffer_start)
  return;
 sun4c_unlockarea((char *)bufptr, len);
}
