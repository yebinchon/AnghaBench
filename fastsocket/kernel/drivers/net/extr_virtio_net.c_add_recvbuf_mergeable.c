
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtnet_info {int rvq; } ;
struct scatterlist {int dummy; } ;
struct page {int dummy; } ;
typedef int gfp_t ;


 int ENOMEM ;
 int PAGE_SIZE ;
 struct page* get_a_page (struct virtnet_info*,int ) ;
 int give_pages (struct virtnet_info*,struct page*) ;
 int page_address (struct page*) ;
 int sg_init_one (struct scatterlist*,int ,int ) ;
 int virtqueue_add_buf (int ,struct scatterlist*,int ,int,struct page*) ;

__attribute__((used)) static int add_recvbuf_mergeable(struct virtnet_info *vi, gfp_t gfp)
{
 struct page *page;
 struct scatterlist sg;
 int err;

 page = get_a_page(vi, gfp);
 if (!page)
  return -ENOMEM;

 sg_init_one(&sg, page_address(page), PAGE_SIZE);

 err = virtqueue_add_buf(vi->rvq, &sg, 0, 1, page);
 if (err < 0)
  give_pages(vi, page);

 return err;
}
