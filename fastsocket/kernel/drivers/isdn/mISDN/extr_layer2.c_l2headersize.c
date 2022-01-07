
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct layer2 {int flag; } ;


 int FLG_LAPD ;
 int FLG_MOD128 ;
 scalar_t__ test_bit (int ,int *) ;

inline u_int
l2headersize(struct layer2 *l2, int ui)
{
 return ((test_bit(FLG_MOD128, &l2->flag) && (!ui)) ? 2 : 1) +
  (test_bit(FLG_LAPD, &l2->flag) ? 2 : 1);
}
