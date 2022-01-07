
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u64 ;
typedef int u32 ;
struct tidaw {scalar_t__ addr; int count; int flags; } ;
struct tcw {int dummy; } ;
typedef scalar_t__ addr_t ;


 int memset (struct tidaw*,int ,int) ;
 scalar_t__ tcw_get_data (struct tcw*) ;

struct tidaw *tcw_add_tidaw(struct tcw *tcw, int num_tidaws, u8 flags,
       void *addr, u32 count)
{
 struct tidaw *tidaw;


 tidaw = ((struct tidaw *) tcw_get_data(tcw)) + num_tidaws;
 memset(tidaw, 0, sizeof(struct tidaw));
 tidaw->flags = flags;
 tidaw->count = count;
 tidaw->addr = (u64) ((addr_t) addr);
 return tidaw;
}
