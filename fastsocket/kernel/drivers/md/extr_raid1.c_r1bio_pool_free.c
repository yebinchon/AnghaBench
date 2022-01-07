
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kfree (void*) ;

__attribute__((used)) static void r1bio_pool_free(void *r1_bio, void *data)
{
 kfree(r1_bio);
}
