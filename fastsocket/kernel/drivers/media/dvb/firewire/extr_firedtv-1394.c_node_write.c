
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct firedtv {int dummy; } ;


 int hpsb_node_write (int ,int ,void*,size_t) ;
 int node_of (struct firedtv*) ;

__attribute__((used)) static int node_write(struct firedtv *fdtv, u64 addr, void *data, size_t len)
{
 return hpsb_node_write(node_of(fdtv), addr, data, len);
}
