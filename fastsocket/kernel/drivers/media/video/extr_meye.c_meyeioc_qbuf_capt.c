
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ mchip_mode; int lock; int grabq; TYPE_1__* grab_buffer; int grab_fbuffer; } ;
struct TYPE_3__ {scalar_t__ state; } ;


 int EBUSY ;
 int EINVAL ;
 scalar_t__ MCHIP_HIC_MODE_CONT_COMP ;
 scalar_t__ MEYE_BUF_UNUSED ;
 scalar_t__ MEYE_BUF_USING ;
 int gbuffers ;
 int kfifo_put (int ,unsigned char*,int) ;
 int mchip_cont_compression_start () ;
 int mchip_hic_stop () ;
 TYPE_2__ meye ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int meyeioc_qbuf_capt(int *nb)
{
 if (!meye.grab_fbuffer)
  return -EINVAL;

 if (*nb >= gbuffers)
  return -EINVAL;

 if (*nb < 0) {

  mchip_hic_stop();
  return 0;
 }

 if (meye.grab_buffer[*nb].state != MEYE_BUF_UNUSED)
  return -EBUSY;

 mutex_lock(&meye.lock);

 if (meye.mchip_mode != MCHIP_HIC_MODE_CONT_COMP)
  mchip_cont_compression_start();

 meye.grab_buffer[*nb].state = MEYE_BUF_USING;
 kfifo_put(meye.grabq, (unsigned char *)nb, sizeof(int));
 mutex_unlock(&meye.lock);

 return 0;
}
