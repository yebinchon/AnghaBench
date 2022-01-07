
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct skb_shared_info {int nr_frags; TYPE_1__* frags; } ;
struct pkt_gl {int nfrags; TYPE_2__* frags; } ;
typedef int skb_frag_t ;
struct TYPE_4__ {int page; scalar_t__ size; scalar_t__ page_offset; } ;
struct TYPE_3__ {scalar_t__ size; scalar_t__ page_offset; int page; } ;


 int get_page (int ) ;
 int memcpy (TYPE_1__*,TYPE_2__*,unsigned int) ;

__attribute__((used)) static inline void copy_frags(struct skb_shared_info *ssi,
         const struct pkt_gl *gl, unsigned int offset)
{
 unsigned int n;


 ssi->frags[0].page = gl->frags[0].page;
 ssi->frags[0].page_offset = gl->frags[0].page_offset + offset;
 ssi->frags[0].size = gl->frags[0].size - offset;
 ssi->nr_frags = gl->nfrags;
 n = gl->nfrags - 1;
 if (n)
  memcpy(&ssi->frags[1], &gl->frags[1], n * sizeof(skb_frag_t));


 get_page(gl->frags[n].page);
}
