
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdesc_hdr {int node_sz; } ;


 scalar_t__ node_block (struct mdesc_hdr*) ;

__attribute__((used)) static void *name_block(struct mdesc_hdr *mdesc)
{
 return ((void *) node_block(mdesc)) + mdesc->node_sz;
}
