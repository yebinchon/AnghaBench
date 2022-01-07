
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct neighbour {int dummy; } ;
struct dst_entry {struct neighbour* neighbour; } ;



__attribute__((used)) static inline struct neighbour *dst_get_neighbour_noref(struct dst_entry *dst)
{
 return dst->neighbour;
}
