
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int s64 ;


 int HV_get_repository_node_value2 ;
 int beat_hcall2 (int ,int *,int ,int ,int ,int ,int ) ;

__attribute__((used)) static inline s64 beat_get_repository_node_value(u64 lpid, u64 path[4],
 u64 data[2])
{
 s64 ret;

 ret = beat_hcall2(HV_get_repository_node_value2, data,
  lpid, path[0], path[1], path[2], path[3]);
 return ret;
}
