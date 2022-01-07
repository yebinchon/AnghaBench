
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {unsigned long num_chunks; int * mapping; } ;


 scalar_t__ _ALIGN (scalar_t__,int) ;
 scalar_t__ klimit ;
 TYPE_1__ mschunks_map ;

__attribute__((used)) static void mschunks_alloc(unsigned long num_chunks)
{
 klimit = _ALIGN(klimit, sizeof(u32));
 mschunks_map.mapping = (u32 *)klimit;
 klimit += num_chunks * sizeof(u32);
 mschunks_map.num_chunks = num_chunks;
}
