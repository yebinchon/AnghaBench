
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {scalar_t__ length; } ;
struct iscsi_segment {unsigned int sg_offset; int * data; scalar_t__ total_copied; scalar_t__ total_size; int size; struct scatterlist* sg; } ;


 int min (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void
iscsi_tcp_segment_init_sg(struct iscsi_segment *segment,
     struct scatterlist *sg, unsigned int offset)
{
 segment->sg = sg;
 segment->sg_offset = offset;
 segment->size = min(sg->length - offset,
       segment->total_size - segment->total_copied);
 segment->data = ((void*)0);
}
