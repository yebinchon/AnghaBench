
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int last_invoke_id; int* invoke_used; } ;
struct TYPE_4__ {TYPE_1__ ni1; } ;
struct PStack {TYPE_2__ prot; } ;



__attribute__((used)) static unsigned char new_invoke_id(struct PStack *p)
{
 unsigned char retval;
 int i;

 i = 32;

 retval = p->prot.ni1.last_invoke_id + 1;
 while ((i) && (p->prot.ni1.invoke_used[retval >> 3] == 0xFF)) {
  p->prot.ni1.last_invoke_id = (retval & 0xF8) + 8;
  i--;
 }
 if (i) {
  while (p->prot.ni1.invoke_used[retval >> 3] & (1 << (retval & 7)))
  retval++;
 } else
  retval = 0;
 p->prot.ni1.last_invoke_id = retval;
 p->prot.ni1.invoke_used[retval >> 3] |= (1 << (retval & 7));
 return(retval);
}
