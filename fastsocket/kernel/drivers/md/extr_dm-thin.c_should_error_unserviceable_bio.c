
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int error_if_no_space; } ;
struct pool {TYPE_1__ pf; } ;
typedef enum pool_mode { ____Placeholder_pool_mode } pool_mode ;


 int DMERR_LIMIT (char*) ;




 int get_pool_mode (struct pool*) ;

__attribute__((used)) static bool should_error_unserviceable_bio(struct pool *pool)
{
 enum pool_mode m = get_pool_mode(pool);

 switch (m) {
 case 128:

  DMERR_LIMIT("bio unserviceable, yet pool is in PM_WRITE mode");
  return 1;

 case 130:
  return pool->pf.error_if_no_space;

 case 129:
 case 131:
  return 1;
 default:

  DMERR_LIMIT("bio unserviceable, yet pool has an unknown mode");
  return 1;
 }
}
