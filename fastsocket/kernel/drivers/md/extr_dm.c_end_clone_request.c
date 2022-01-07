
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int q; } ;


 int __blk_put_request (int ,struct request*) ;
 int dm_complete_request (struct request*,int) ;

__attribute__((used)) static void end_clone_request(struct request *clone, int error)
{






 __blk_put_request(clone->q, clone);
 dm_complete_request(clone, error);
}
