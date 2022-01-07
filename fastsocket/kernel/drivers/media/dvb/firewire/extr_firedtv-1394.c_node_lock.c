
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct firedtv {int dummy; } ;
typedef int quadlet_t ;


 int EXTCODE_COMPARE_SWAP ;
 int hpsb_node_lock (int ,int ,int ,int *,int ) ;
 int node_of (struct firedtv*) ;

__attribute__((used)) static int node_lock(struct firedtv *fdtv, u64 addr, void *data)
{
 quadlet_t *d = data;
 int ret;

 ret = hpsb_node_lock(node_of(fdtv), addr,
        EXTCODE_COMPARE_SWAP, &d[1], d[0]);
 d[0] = d[1];

 return ret;
}
