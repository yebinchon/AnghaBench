
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int s64 ;


 int HV_create_repository_node2 ;
 int beat_hcall_norets (int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static inline s64 beat_create_repository_node(u64 path[4], u64 data[2])
{
 s64 ret;

 ret = beat_hcall_norets(HV_create_repository_node2,
  path[0], path[1], path[2], path[3], data[0], data[1]);
 return ret;
}
