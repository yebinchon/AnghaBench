
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {struct request* special; } ;
struct mapped_device {int * pending; } ;


 int atomic_inc (int *) ;
 int blk_start_request (struct request*) ;
 int dm_get (struct mapped_device*) ;
 size_t rq_data_dir (struct request*) ;

__attribute__((used)) static struct request *dm_start_request(struct mapped_device *md, struct request *orig)
{
 struct request *clone;

 blk_start_request(orig);
 clone = orig->special;
 atomic_inc(&md->pending[rq_data_dir(clone)]);
 dm_get(md);

 return clone;
}
