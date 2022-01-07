
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pkt_gl {int nfrags; TYPE_1__* frags; } ;
struct TYPE_2__ {int page; } ;
typedef TYPE_1__ skb_frag_t ;


 int put_page (int ) ;

__attribute__((used)) static void t4_pktgl_free(const struct pkt_gl *gl)
{
 int n;
 const skb_frag_t *p;

 for (p = gl->frags, n = gl->nfrags - 1; n--; p++)
  put_page(p->page);
}
