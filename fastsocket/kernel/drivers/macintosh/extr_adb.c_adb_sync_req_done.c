
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct completion {int dummy; } ;
struct adb_request {struct completion* arg; } ;


 int complete (struct completion*) ;

__attribute__((used)) static void adb_sync_req_done(struct adb_request *req)
{
 struct completion *comp = req->arg;

 complete(comp);
}
