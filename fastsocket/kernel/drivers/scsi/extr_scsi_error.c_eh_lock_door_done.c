
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int q; } ;


 int __blk_put_request (int ,struct request*) ;

__attribute__((used)) static void eh_lock_door_done(struct request *req, int uptodate)
{
 __blk_put_request(req->q, req);
}
