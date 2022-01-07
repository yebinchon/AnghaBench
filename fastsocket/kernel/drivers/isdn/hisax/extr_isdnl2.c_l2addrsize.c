
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Layer2 {int flag; } ;


 int FLG_LAPD ;
 scalar_t__ test_bit (int ,int *) ;

inline int
l2addrsize(struct Layer2 *l2)
{
 return (test_bit(FLG_LAPD, &l2->flag) ? 2 : 1);
}
