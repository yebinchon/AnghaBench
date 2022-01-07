
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adb_request {int complete; int (* done ) (struct adb_request*) ;int next; } ;


 int adb_iop_state ;
 int current_req ;
 int stub1 (struct adb_request*) ;

__attribute__((used)) static void adb_iop_end_req(struct adb_request *req, int state)
{
 req->complete = 1;
 current_req = req->next;
 if (req->done) (*req->done)(req);
 adb_iop_state = state;
}
