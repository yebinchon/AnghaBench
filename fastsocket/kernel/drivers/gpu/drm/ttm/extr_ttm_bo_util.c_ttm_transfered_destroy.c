
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_buffer_object {int dummy; } ;


 int kfree (struct ttm_buffer_object*) ;

__attribute__((used)) static void ttm_transfered_destroy(struct ttm_buffer_object *bo)
{
 kfree(bo);
}
