
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_id_private {int dummy; } ;
struct idr {int dummy; } ;


 int EADDRNOTAVAIL ;
 int cma_alloc_port (struct idr*,struct rdma_id_private*,unsigned int) ;
 int idr_find (struct idr*,unsigned short) ;
 int inet_get_local_port_range (int*,int*) ;
 int net_random () ;

__attribute__((used)) static int cma_alloc_any_port(struct idr *ps, struct rdma_id_private *id_priv)
{
 static unsigned int last_used_port;
 int low, high, remaining;
 unsigned int rover;

 inet_get_local_port_range(&low, &high);
 remaining = (high - low) + 1;
 rover = net_random() % remaining + low;
retry:
 if (last_used_port != rover &&
     !idr_find(ps, (unsigned short) rover)) {
  int ret = cma_alloc_port(ps, id_priv, rover);




  if (!ret)
   last_used_port = rover;
  if (ret != -EADDRNOTAVAIL)
   return ret;
 }
 if (--remaining) {
  rover++;
  if ((rover < low) || (rover > high))
   rover = low;
  goto retry;
 }
 return -EADDRNOTAVAIL;
}
