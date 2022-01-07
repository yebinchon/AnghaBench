
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union tl_entry {scalar_t__ nl; } ;
struct tl_cpu {int dummy; } ;
struct tl_container {int dummy; } ;



__attribute__((used)) static union tl_entry *next_tle(union tl_entry *tle)
{
 if (tle->nl)
  return (union tl_entry *)((struct tl_container *)tle + 1);
 else
  return (union tl_entry *)((struct tl_cpu *)tle + 1);
}
