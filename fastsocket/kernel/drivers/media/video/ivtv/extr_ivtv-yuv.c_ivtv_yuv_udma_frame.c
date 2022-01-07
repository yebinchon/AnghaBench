
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ivtv_dma_frame {int dummy; } ;
struct TYPE_2__ {int lock; } ;
struct ivtv {TYPE_1__ udma; int dma_waitq; int i_flags; } ;


 int DEFINE_WAIT (int ) ;
 int EINTR ;
 int IVTV_DEBUG_INFO (char*) ;
 int IVTV_F_I_UDMA ;
 int IVTV_F_I_UDMA_PENDING ;
 int TASK_INTERRUPTIBLE ;
 int current ;
 int finish_wait (int *,int *) ;
 int ivtv_udma_prepare (struct ivtv*) ;
 int ivtv_udma_unmap (struct ivtv*) ;
 int ivtv_yuv_frame_complete (struct ivtv*) ;
 int ivtv_yuv_prep_user_dma (struct ivtv*,TYPE_1__*,struct ivtv_dma_frame*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int prepare_to_wait (int *,int *,int ) ;
 int schedule () ;
 int signal_pending (int ) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int wait ;

__attribute__((used)) static int ivtv_yuv_udma_frame(struct ivtv *itv, struct ivtv_dma_frame *args)
{
 DEFINE_WAIT(wait);
 int rc = 0;
 int got_sig = 0;

 mutex_lock(&itv->udma.lock);

 if ((rc = ivtv_yuv_prep_user_dma(itv, &itv->udma, args)) != 0) {
  mutex_unlock(&itv->udma.lock);
  return rc;
 }

 ivtv_udma_prepare(itv);
 prepare_to_wait(&itv->dma_waitq, &wait, TASK_INTERRUPTIBLE);


 while (test_bit(IVTV_F_I_UDMA_PENDING, &itv->i_flags) ||
        test_bit(IVTV_F_I_UDMA, &itv->i_flags)) {


  got_sig = signal_pending(current);
  if (got_sig && test_and_clear_bit(IVTV_F_I_UDMA_PENDING, &itv->i_flags))
   break;
  got_sig = 0;
  schedule();
 }
 finish_wait(&itv->dma_waitq, &wait);


 ivtv_udma_unmap(itv);

 if (got_sig) {
  IVTV_DEBUG_INFO("User stopped YUV UDMA\n");
  mutex_unlock(&itv->udma.lock);
  return -EINTR;
 }

 ivtv_yuv_frame_complete(itv);

 mutex_unlock(&itv->udma.lock);
 return rc;
}
