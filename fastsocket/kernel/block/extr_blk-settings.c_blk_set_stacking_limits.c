
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue_limits {int discard_zeroes_data; void* max_sectors; void* max_hw_sectors; int max_segments; } ;


 void* UINT_MAX ;
 int USHORT_MAX ;
 int blk_set_default_limits (struct queue_limits*) ;

void blk_set_stacking_limits(struct queue_limits *lim)
{
 blk_set_default_limits(lim);


 lim->discard_zeroes_data = 1;
 lim->max_segments = USHORT_MAX;
 lim->max_hw_sectors = UINT_MAX;
 lim->max_sectors = UINT_MAX;
}
