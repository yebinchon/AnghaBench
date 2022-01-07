
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thin_c {int retry_on_resume_list; int deferred_bio_list; } ;


 int requeue_bio_list (struct thin_c*,int *) ;

__attribute__((used)) static void requeue_io(struct thin_c *tc)
{
 requeue_bio_list(tc, &tc->deferred_bio_list);
 requeue_bio_list(tc, &tc->retry_on_resume_list);
}
