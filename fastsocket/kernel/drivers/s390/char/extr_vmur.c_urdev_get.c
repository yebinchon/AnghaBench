
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urdev {int ref_count; } ;


 int atomic_inc (int *) ;

__attribute__((used)) static void urdev_get(struct urdev *urd)
{
 atomic_inc(&urd->ref_count);
}
