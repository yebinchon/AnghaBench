
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_buffer {unsigned int used_count; } ;



unsigned int pvr2_buffer_get_count(struct pvr2_buffer *bp)
{
 return bp->used_count;
}
