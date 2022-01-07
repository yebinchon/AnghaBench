
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brr_to_sig_map {int brr_mask; unsigned long tbr_tt; int signo; } ;


 unsigned long BRR_EBTT ;
 struct brr_to_sig_map* brr_to_sig_map ;

__attribute__((used)) static inline int gdbstub_compute_signal(unsigned long brr)
{
 const struct brr_to_sig_map *map;
 unsigned long tbr = (brr & BRR_EBTT) >> 12;

 for (map = brr_to_sig_map; map->brr_mask; map++)
  if (map->brr_mask & brr)
   if (!map->tbr_tt || map->tbr_tt == tbr)
    break;

 return map->signo;
}
