
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pwc_device {int ptrlock; TYPE_1__* read_frame; TYPE_1__* empty_frames_tail; TYPE_1__* empty_frames; TYPE_1__* full_frames; } ;
struct TYPE_2__ {struct TYPE_2__* next; } ;


 int PWC_ERROR (char*) ;
 int pwc_decompress (struct pwc_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int pwc_handle_frame(struct pwc_device *pdev)
{
 int ret = 0;
 unsigned long flags;

 spin_lock_irqsave(&pdev->ptrlock, flags);


 if (pdev->read_frame != ((void*)0)) {

  PWC_ERROR("Huh? Read frame still in use?\n");
  spin_unlock_irqrestore(&pdev->ptrlock, flags);
  return ret;
 }


 if (pdev->full_frames == ((void*)0)) {
  PWC_ERROR("Woops. No frames ready.\n");
 }
 else {
  pdev->read_frame = pdev->full_frames;
  pdev->full_frames = pdev->full_frames->next;
  pdev->read_frame->next = ((void*)0);
 }

 if (pdev->read_frame != ((void*)0)) {




  spin_unlock_irqrestore(&pdev->ptrlock, flags);
  ret = pwc_decompress(pdev);
  spin_lock_irqsave(&pdev->ptrlock, flags);


  if (pdev->empty_frames == ((void*)0)) {
   pdev->empty_frames = pdev->read_frame;
   pdev->empty_frames_tail = pdev->empty_frames;
  }
  else {
   pdev->empty_frames_tail->next = pdev->read_frame;
   pdev->empty_frames_tail = pdev->read_frame;
  }
  pdev->read_frame = ((void*)0);
 }
 spin_unlock_irqrestore(&pdev->ptrlock, flags);
 return ret;
}
