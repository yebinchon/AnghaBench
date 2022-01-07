
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct request {int nr_phys_segments; int q; } ;
struct fc_bsg_buffer {int payload_len; int sg_list; int sg_cnt; } ;


 int BUG_ON (int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int blk_rq_bytes (struct request*) ;
 int blk_rq_map_sg (int ,struct request*,int ) ;
 int kzalloc (size_t,int ) ;
 int sg_init_table (int ,int) ;

__attribute__((used)) static int
fc_bsg_map_buffer(struct fc_bsg_buffer *buf, struct request *req)
{
 size_t sz = (sizeof(struct scatterlist) * req->nr_phys_segments);

 BUG_ON(!req->nr_phys_segments);

 buf->sg_list = kzalloc(sz, GFP_KERNEL);
 if (!buf->sg_list)
  return -ENOMEM;
 sg_init_table(buf->sg_list, req->nr_phys_segments);
 buf->sg_cnt = blk_rq_map_sg(req->q, req, buf->sg_list);
 buf->payload_len = blk_rq_bytes(req);
 return 0;
}
