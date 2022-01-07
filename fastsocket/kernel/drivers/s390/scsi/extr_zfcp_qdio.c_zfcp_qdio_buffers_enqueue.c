
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qdio_buffer {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int QBUFF_PER_PAGE ;
 int QDIO_MAX_BUFFERS_PER_Q ;
 scalar_t__ get_zeroed_page (int ) ;

__attribute__((used)) static int zfcp_qdio_buffers_enqueue(struct qdio_buffer **sbal)
{
 int pos;

 for (pos = 0; pos < QDIO_MAX_BUFFERS_PER_Q; pos += QBUFF_PER_PAGE) {
  sbal[pos] = (struct qdio_buffer *) get_zeroed_page(GFP_KERNEL);
  if (!sbal[pos])
   return -ENOMEM;
 }
 for (pos = 0; pos < QDIO_MAX_BUFFERS_PER_Q; pos++)
  if (pos % QBUFF_PER_PAGE)
   sbal[pos] = sbal[pos - 1] + 1;
 return 0;
}
