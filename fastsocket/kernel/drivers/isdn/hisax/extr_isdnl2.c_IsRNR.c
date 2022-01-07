
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_2__ {int flag; } ;
struct PStack {TYPE_1__ l2; } ;


 int FLG_MOD128 ;
 int RNR ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static inline int
IsRNR(u_char * data, struct PStack *st)
{
 return (test_bit(FLG_MOD128, &st->l2.flag) ? data[0] == RNR : (data[0] & 0xf) == RNR);
}
