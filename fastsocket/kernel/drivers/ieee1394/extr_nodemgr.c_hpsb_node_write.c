
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct node_entry {unsigned int generation; int nodeid; int host; } ;
typedef int quadlet_t ;


 int hpsb_write (int ,int ,unsigned int,int ,int *,size_t) ;
 int smp_rmb () ;

int hpsb_node_write(struct node_entry *ne, u64 addr,
      quadlet_t *buffer, size_t length)
{
 unsigned int generation = ne->generation;

 smp_rmb();
 return hpsb_write(ne->host, ne->nodeid, generation,
     addr, buffer, length);
}
