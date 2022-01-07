
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i387_soft_struct {int cwd; int twd; int no_update; int fip; int foo; scalar_t__ ftop; scalar_t__ swd; } ;
struct address {scalar_t__ opcode; scalar_t__ selector; scalar_t__ offset; } ;


 int memset (struct i387_soft_struct*,int ,int) ;

void finit_soft_fpu(struct i387_soft_struct *soft)
{
 struct address *oaddr, *iaddr;
 memset(soft, 0, sizeof(*soft));
 soft->cwd = 0x037f;
 soft->swd = 0;
 soft->ftop = 0;
 soft->twd = 0xffff;


 oaddr = (struct address *)&soft->foo;
 oaddr->offset = 0;
 oaddr->selector = 0;
 iaddr = (struct address *)&soft->fip;
 iaddr->offset = 0;
 iaddr->selector = 0;
 iaddr->opcode = 0;
 soft->no_update = 1;
}
