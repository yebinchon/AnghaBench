
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct completion {int dummy; } ;
struct bio {scalar_t__ bi_private; } ;


 int complete (struct completion*) ;

__attribute__((used)) static void bi_complete(struct bio *bio, int error)
{
 complete((struct completion*)bio->bi_private);
}
