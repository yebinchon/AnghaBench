
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct bcm3510_state {int dummy; } ;
struct TYPE_3__ {int raw; } ;
typedef TYPE_1__ bcm3510_register_value ;


 int bcm3510_writebytes (struct bcm3510_state*,int ,int *,int) ;

__attribute__((used)) static int bcm3510_writeB(struct bcm3510_state *state, u8 reg, bcm3510_register_value v)
{
 return bcm3510_writebytes(state,reg,&v.raw,1);
}
