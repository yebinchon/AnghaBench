
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qdio_buffer {int dummy; } ;


 int QDIO_MAX_BUFFERS_PER_Q ;
 int memset (struct qdio_buffer*,int ,int) ;

__attribute__((used)) static void zfcp_qdio_zero_sbals(struct qdio_buffer *sbal[], int first, int cnt)
{
 int i, sbal_idx;

 for (i = first; i < first + cnt; i++) {
  sbal_idx = i % QDIO_MAX_BUFFERS_PER_Q;
  memset(sbal[sbal_idx], 0, sizeof(struct qdio_buffer));
 }
}
