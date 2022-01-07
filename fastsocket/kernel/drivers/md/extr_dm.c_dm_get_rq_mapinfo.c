
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union map_info {int dummy; } map_info ;
struct request {scalar_t__ end_io_data; } ;
struct dm_rq_target_io {union map_info info; } ;



union map_info *dm_get_rq_mapinfo(struct request *rq)
{
 if (rq && rq->end_io_data)
  return &((struct dm_rq_target_io *)rq->end_io_data)->info;
 return ((void*)0);
}
