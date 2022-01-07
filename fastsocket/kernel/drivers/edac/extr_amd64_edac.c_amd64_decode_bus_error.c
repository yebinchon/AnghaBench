
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mce {int dummy; } ;


 int __amd64_decode_bus_error (int ,struct mce*) ;
 int * mcis ;

void amd64_decode_bus_error(int node_id, struct mce *m)
{
 __amd64_decode_bus_error(mcis[node_id], m);
}
