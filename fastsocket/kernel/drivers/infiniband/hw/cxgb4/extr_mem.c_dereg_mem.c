
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct c4iw_rdev {int dummy; } ;


 int write_tpt_entry (struct c4iw_rdev*,int,int *,int ,int ,int ,int ,int ,int ,unsigned long,int ,int ,int ,int ) ;

__attribute__((used)) static int dereg_mem(struct c4iw_rdev *rdev, u32 stag, u32 pbl_size,
       u32 pbl_addr)
{
 return write_tpt_entry(rdev, 1, &stag, 0, 0, 0, 0, 0, 0, 0UL, 0, 0,
          pbl_size, pbl_addr);
}
