
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct mdesc_handle {int mdesc; } ;
struct TYPE_2__ {int val; } ;
struct mdesc_elem {TYPE_1__ d; } ;


 struct mdesc_elem* node_block (int *) ;

u64 mdesc_arc_target(struct mdesc_handle *hp, u64 arc)
{
 struct mdesc_elem *ep, *base = node_block(&hp->mdesc);

 ep = base + arc;

 return ep->d.val;
}
