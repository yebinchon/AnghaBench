
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct video_card {int mtx; int dv_buf; } ;
struct file {int dummy; } ;


 int EAGAIN ;
 int EINVAL ;
 int dma_region_mmap (int *,struct file*,struct vm_area_struct*) ;
 int do_dv1394_init_default (struct video_card*) ;
 struct video_card* file_to_video_card (struct file*) ;
 int mutex_trylock (int *) ;
 int mutex_unlock (int *) ;
 int video_card_initialized (struct video_card*) ;

__attribute__((used)) static int dv1394_mmap(struct file *file, struct vm_area_struct *vma)
{
 struct video_card *video = file_to_video_card(file);
 int retval = -EINVAL;







 if (!mutex_trylock(&video->mtx))
  return -EAGAIN;

 if ( ! video_card_initialized(video) ) {
  retval = do_dv1394_init_default(video);
  if (retval)
   goto out;
 }

 retval = dma_region_mmap(&video->dv_buf, file, vma);
out:
 mutex_unlock(&video->mtx);
 return retval;
}
