
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_2__ {int flag; } ;
struct PStack {TYPE_1__ l2; } ;


 int FLG_MOD128 ;
 int test_bit (int ,int *) ;

__attribute__((used)) static inline int
IsSFrame(u_char * data, struct PStack *st)
{
 register u_char d = *data;

 if (!test_bit(FLG_MOD128, &st->l2.flag))
  d &= 0xf;
 return(((d & 0xf3) == 1) && ((d & 0x0c) != 0x0c));
}
