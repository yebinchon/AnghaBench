
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct scatterlist {unsigned int length; scalar_t__ offset; } ;
struct page {int dummy; } ;
struct TYPE_3__ {scalar_t__ page_offset; unsigned int size; struct page* page; } ;
typedef TYPE_1__ skb_frag_t ;


 int EINVAL ;
 unsigned int min (unsigned int,unsigned int) ;
 int pr_warn (char*,int,unsigned int,...) ;
 struct scatterlist* sg_next (struct scatterlist*) ;
 struct page* sg_page (struct scatterlist*) ;

__attribute__((used)) static int sgl_read_to_frags(struct scatterlist *sg, unsigned int sgoffset,
    unsigned int dlen, skb_frag_t *frags,
    int frag_max)
{
 unsigned int datalen = dlen;
 unsigned int sglen = sg->length - sgoffset;
 struct page *page = sg_page(sg);
 int i;

 i = 0;
 do {
  unsigned int copy;

  if (!sglen) {
   sg = sg_next(sg);
   if (!sg) {
    pr_warn("sg %d NULL, len %u/%u.\n",
     i, datalen, dlen);
    return -EINVAL;
   }
   sgoffset = 0;
   sglen = sg->length;
   page = sg_page(sg);

  }
  copy = min(datalen, sglen);
  if (i && page == frags[i - 1].page &&
      sgoffset + sg->offset ==
   frags[i - 1].page_offset + frags[i - 1].size) {
   frags[i - 1].size += copy;
  } else {
   if (i >= frag_max) {
    pr_warn("too many pages %u, dlen %u.\n",
     frag_max, dlen);
    return -EINVAL;
   }

   frags[i].page = page;
   frags[i].page_offset = sg->offset + sgoffset;
   frags[i].size = copy;
   i++;
  }
  datalen -= copy;
  sgoffset += copy;
  sglen -= copy;
 } while (datalen);

 return i;
}
