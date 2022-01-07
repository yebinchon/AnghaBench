
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct layer2 {int flag; } ;


 int FLG_MOD128 ;
 int test_bit (int ,int *) ;

inline int
IsSFrame(u_char *data, struct layer2 *l2)
{
 register u_char d = *data;

 if (!test_bit(FLG_MOD128, &l2->flag))
  d &= 0xf;
 return ((d & 0xf3) == 1) && ((d & 0x0c) != 0x0c);
}
