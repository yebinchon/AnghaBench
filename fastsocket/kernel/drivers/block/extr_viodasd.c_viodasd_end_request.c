
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;


 int __blk_end_request (struct request*,int,int) ;

__attribute__((used)) static void viodasd_end_request(struct request *req, int error,
  int num_sectors)
{
 __blk_end_request(req, error, num_sectors << 9);
}
