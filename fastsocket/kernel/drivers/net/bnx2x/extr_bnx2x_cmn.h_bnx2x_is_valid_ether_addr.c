
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bnx2x {int dummy; } ;


 scalar_t__ IS_MF_FCOE_AFEX (struct bnx2x*) ;
 scalar_t__ IS_MF_STORAGE_SD (struct bnx2x*) ;
 scalar_t__ is_valid_ether_addr (int *) ;
 scalar_t__ is_zero_ether_addr (int *) ;

__attribute__((used)) static inline bool bnx2x_is_valid_ether_addr(struct bnx2x *bp, u8 *addr)
{
 if (is_valid_ether_addr(addr) ||
     (is_zero_ether_addr(addr) &&
      (IS_MF_STORAGE_SD(bp) || IS_MF_FCOE_AFEX(bp))))
  return 1;

 return 0;
}
