
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdrom_device_info {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static int viocd_audio_ioctl(struct cdrom_device_info *cdi, unsigned int cmd,
        void *arg)
{
 return -EINVAL;
}
