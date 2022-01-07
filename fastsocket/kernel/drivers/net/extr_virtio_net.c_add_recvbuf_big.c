
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtnet_info {int rvq; } ;
struct virtio_net_hdr {int dummy; } ;
struct scatterlist {int dummy; } ;
struct page {unsigned long private; } ;
struct padded_vnet_hdr {int dummy; } ;
typedef int gfp_t ;


 int ENOMEM ;
 int MAX_SKB_FRAGS ;
 int PAGE_SIZE ;
 struct page* get_a_page (struct virtnet_info*,int ) ;
 int give_pages (struct virtnet_info*,struct page*) ;
 char* page_address (struct page*) ;
 int sg_set_buf (struct scatterlist*,char*,int) ;
 int virtqueue_add_buf (int ,struct scatterlist*,int ,int,struct page*) ;

__attribute__((used)) static int add_recvbuf_big(struct virtnet_info *vi, gfp_t gfp)
{
 struct scatterlist sg[MAX_SKB_FRAGS + 2];
 struct page *first, *list = ((void*)0);
 char *p;
 int i, err, offset;


 for (i = MAX_SKB_FRAGS + 1; i > 1; --i) {
  first = get_a_page(vi, gfp);
  if (!first) {
   if (list)
    give_pages(vi, list);
   return -ENOMEM;
  }
  sg_set_buf(&sg[i], page_address(first), PAGE_SIZE);


  first->private = (unsigned long)list;
  list = first;
 }

 first = get_a_page(vi, gfp);
 if (!first) {
  give_pages(vi, list);
  return -ENOMEM;
 }
 p = page_address(first);



 sg_set_buf(&sg[0], p, sizeof(struct virtio_net_hdr));


 offset = sizeof(struct padded_vnet_hdr);
 sg_set_buf(&sg[1], p + offset, PAGE_SIZE - offset);


 first->private = (unsigned long)list;
 err = virtqueue_add_buf(vi->rvq, sg, 0, MAX_SKB_FRAGS + 2,
           first);
 if (err < 0)
  give_pages(vi, first);

 return err;
}
