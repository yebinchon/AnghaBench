
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pwc_device {int ptrlock; TYPE_1__* fill_frame; TYPE_1__* full_frames; TYPE_1__* empty_frames; TYPE_1__* full_frames_tail; } ;
struct TYPE_2__ {struct TYPE_2__* next; } ;


 int EINVAL ;
 int PWC_ERROR (char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int pwc_next_fill_frame(struct pwc_device *pdev)
{
 int ret;
 unsigned long flags;

 ret = 0;
 spin_lock_irqsave(&pdev->ptrlock, flags);
 if (pdev->fill_frame != ((void*)0)) {

  if (pdev->full_frames == ((void*)0)) {
   pdev->full_frames = pdev->fill_frame;
   pdev->full_frames_tail = pdev->full_frames;
  }
  else {
   pdev->full_frames_tail->next = pdev->fill_frame;
   pdev->full_frames_tail = pdev->fill_frame;
  }
 }
 if (pdev->empty_frames != ((void*)0)) {

  pdev->fill_frame = pdev->empty_frames;
  pdev->empty_frames = pdev->empty_frames->next;
 }
 else {


  if (pdev->full_frames == ((void*)0)) {
   PWC_ERROR("Neither empty or full frames available!\n");
   spin_unlock_irqrestore(&pdev->ptrlock, flags);
   return -EINVAL;
  }
  pdev->fill_frame = pdev->full_frames;
  pdev->full_frames = pdev->full_frames->next;
  ret = 1;
 }
 pdev->fill_frame->next = ((void*)0);
 spin_unlock_irqrestore(&pdev->ptrlock, flags);
 return ret;
}
