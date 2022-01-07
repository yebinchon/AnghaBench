
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_net_priv {int ule_sndu_type; int ule_next_hdr; TYPE_1__* ule_skb; } ;
struct TYPE_2__ {int data; } ;


 int dprintk (char*,int ,int,int,int) ;
 int handle_one_ule_extension (struct dvb_net_priv*) ;

__attribute__((used)) static int handle_ule_extensions( struct dvb_net_priv *p )
{
 int total_ext_len = 0, l;

 p->ule_next_hdr = p->ule_skb->data;
 do {
  l = handle_one_ule_extension( p );
  if (l < 0)
   return l;
  total_ext_len += l;






 } while (p->ule_sndu_type < 1536);

 return total_ext_len;
}
