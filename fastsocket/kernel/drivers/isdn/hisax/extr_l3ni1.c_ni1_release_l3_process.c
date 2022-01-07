
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int invoke_id; } ;
struct TYPE_4__ {TYPE_1__ ni1; } ;
struct l3_process {TYPE_2__ prot; int st; } ;


 int free_invoke_id (int ,int ) ;
 int release_l3_process (struct l3_process*) ;

__attribute__((used)) static void
ni1_release_l3_process(struct l3_process *p)
{
   free_invoke_id(p->st,p->prot.ni1.invoke_id);
   release_l3_process(p);
}
