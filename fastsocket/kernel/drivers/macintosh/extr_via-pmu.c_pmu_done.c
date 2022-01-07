
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adb_request {void (* done ) (struct adb_request*) ;int complete; } ;


 int mb () ;
 void stub1 (struct adb_request*) ;

__attribute__((used)) static inline void
pmu_done(struct adb_request *req)
{
 void (*done)(struct adb_request *) = req->done;
 mb();
 req->complete = 1;



 if (done)
  (*done)(req);
}
