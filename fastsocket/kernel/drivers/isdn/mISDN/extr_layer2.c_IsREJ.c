
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct layer2 {int flag; } ;


 int FLG_MOD128 ;
 int REJ ;
 scalar_t__ test_bit (int ,int *) ;

inline int
IsREJ(u_char *data, struct layer2 *l2)
{
 return test_bit(FLG_MOD128, &l2->flag) ?
  data[0] == REJ : (data[0] & 0xf) == REJ;
}
