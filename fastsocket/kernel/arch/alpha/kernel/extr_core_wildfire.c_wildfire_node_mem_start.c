
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
unsigned long wildfire_node_mem_start(int nid)
{

 return (unsigned long)nid * (64UL * 1024 * 1024 * 1024);
}
