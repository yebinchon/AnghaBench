
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loop_device {int lo_bio_list; } ;
struct bio {int dummy; } ;


 struct bio* bio_list_pop (int *) ;

__attribute__((used)) static struct bio *loop_get_bio(struct loop_device *lo)
{
 return bio_list_pop(&lo->lo_bio_list);
}
