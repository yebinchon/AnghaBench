
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct vio_dring_state {scalar_t__ num_entries; } ;



__attribute__((used)) static u32 next_idx(u32 idx, struct vio_dring_state *dr)
{
 if (++idx == dr->num_entries)
  idx = 0;
 return idx;
}
