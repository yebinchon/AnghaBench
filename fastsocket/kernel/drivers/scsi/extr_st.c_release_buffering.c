
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_buffer {scalar_t__ sg_segs; scalar_t__ do_dio; } ;
struct scsi_tape {struct st_buffer* buffer; } ;


 int sgl_unmap_user_pages (struct st_buffer*,scalar_t__,int) ;

__attribute__((used)) static void release_buffering(struct scsi_tape *STp, int is_read)
{
 struct st_buffer *STbp;

 STbp = STp->buffer;
 if (STbp->do_dio) {
  sgl_unmap_user_pages(STbp, STbp->do_dio, is_read);
  STbp->do_dio = 0;
  STbp->sg_segs = 0;
 }
}
