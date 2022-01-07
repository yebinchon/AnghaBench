
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct l3_process {int dummy; } ;


 int l3ni1_proceed_req (struct l3_process*,int ,void*) ;
 int l3ni1_redir_req (struct l3_process*,int ,void*) ;

__attribute__((used)) static void l3ni1_redir_req_early(struct l3_process *pc, u_char pr, void *arg)
{
  l3ni1_proceed_req(pc,pr,arg);
  l3ni1_redir_req(pc,pr,arg);
}
