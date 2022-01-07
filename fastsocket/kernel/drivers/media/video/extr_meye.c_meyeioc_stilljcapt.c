
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int lock; TYPE_1__* grab_buffer; int grab_fbuffer; } ;
struct TYPE_3__ {scalar_t__ state; } ;


 int EBUSY ;
 int EINVAL ;
 scalar_t__ MEYE_BUF_DONE ;
 scalar_t__ MEYE_BUF_UNUSED ;
 scalar_t__ MEYE_BUF_USING ;
 int gbufsize ;
 int mchip_compress_frame (int ,int ) ;
 int mchip_take_picture () ;
 TYPE_2__ meye ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int meyeioc_stilljcapt(int *len)
{
 if (!meye.grab_fbuffer)
  return -EINVAL;

 if (meye.grab_buffer[0].state != MEYE_BUF_UNUSED)
  return -EBUSY;

 mutex_lock(&meye.lock);
 meye.grab_buffer[0].state = MEYE_BUF_USING;
 *len = -1;

 while (*len == -1) {
  mchip_take_picture();
  *len = mchip_compress_frame(meye.grab_fbuffer, gbufsize);
 }

 meye.grab_buffer[0].state = MEYE_BUF_DONE;
 mutex_unlock(&meye.lock);
 return 0;
}
