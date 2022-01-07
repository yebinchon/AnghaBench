
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mirror {int dummy; } ;
struct bio {scalar_t__ bi_next; } ;



__attribute__((used)) static struct mirror *bio_get_m(struct bio *bio)
{
 return (struct mirror *) bio->bi_next;
}
