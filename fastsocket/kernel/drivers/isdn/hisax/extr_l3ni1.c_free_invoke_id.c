
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* invoke_used; } ;
struct TYPE_4__ {TYPE_1__ ni1; } ;
struct PStack {TYPE_2__ prot; } ;



__attribute__((used)) static void free_invoke_id(struct PStack *p, unsigned char id)
{

  if (!id) return;

  p->prot.ni1.invoke_used[id >> 3] &= ~(1 << (id & 7));
}
