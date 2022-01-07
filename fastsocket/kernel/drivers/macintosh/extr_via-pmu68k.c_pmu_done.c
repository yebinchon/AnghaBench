
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adb_request {int complete; int (* done ) (struct adb_request*) ;} ;


 int stub1 (struct adb_request*) ;

__attribute__((used)) static void
pmu_done(struct adb_request *req)
{
 req->complete = 1;
 if (req->done)
  (*req->done)(req);
}
