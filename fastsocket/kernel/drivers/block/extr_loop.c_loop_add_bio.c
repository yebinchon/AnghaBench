
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loop_device {int lo_bio_list; } ;
struct bio {int dummy; } ;


 int bio_list_add (int *,struct bio*) ;

__attribute__((used)) static void loop_add_bio(struct loop_device *lo, struct bio *bio)
{
 bio_list_add(&lo->lo_bio_list, bio);
}
