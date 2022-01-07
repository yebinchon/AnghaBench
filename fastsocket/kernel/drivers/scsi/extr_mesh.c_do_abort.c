
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mesh_state {int n_msgout; int aborting; int stat; int * msgout; } ;


 int ABORT ;
 int DID_ABORT ;
 int dlog (struct mesh_state*,char*,int ) ;

__attribute__((used)) static void do_abort(struct mesh_state *ms)
{
 ms->msgout[0] = ABORT;
 ms->n_msgout = 1;
 ms->aborting = 1;
 ms->stat = DID_ABORT;
 dlog(ms, "abort", 0);
}
