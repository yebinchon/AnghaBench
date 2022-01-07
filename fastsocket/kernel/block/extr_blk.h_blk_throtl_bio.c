
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct bio {int dummy; } ;



__attribute__((used)) static inline bool blk_throtl_bio(struct request_queue *q, struct bio *bio)
{
 return 0;
}
