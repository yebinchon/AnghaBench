
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_2__ {int flag; } ;
struct PStack {TYPE_1__ l2; } ;


 int FLG_MOD128 ;
 int SABM ;
 int SABME ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static inline int
IsSABME(u_char * data, struct PStack *st)
{
 u_char d = data[0] & ~0x10;

 return (test_bit(FLG_MOD128, &st->l2.flag) ? d == SABME : d == SABM);
}
