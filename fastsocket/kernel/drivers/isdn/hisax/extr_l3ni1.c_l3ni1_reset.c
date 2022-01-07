
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct l3_process {int dummy; } ;


 int ni1_release_l3_process (struct l3_process*) ;

__attribute__((used)) static void
l3ni1_reset(struct l3_process *pc, u_char pr, void *arg)
{
 ni1_release_l3_process(pc);
}
