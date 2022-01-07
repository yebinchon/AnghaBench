
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;


 int DMERR (char*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (scalar_t__) ;
 int ORIGIN_HASH_SIZE ;
 scalar_t__ _origins ;
 int _origins_lock ;
 int init_rwsem (int *) ;
 scalar_t__ kmalloc (int,int ) ;

__attribute__((used)) static int init_origin_hash(void)
{
 int i;

 _origins = kmalloc(ORIGIN_HASH_SIZE * sizeof(struct list_head),
      GFP_KERNEL);
 if (!_origins) {
  DMERR("unable to allocate memory");
  return -ENOMEM;
 }

 for (i = 0; i < ORIGIN_HASH_SIZE; i++)
  INIT_LIST_HEAD(_origins + i);
 init_rwsem(&_origins_lock);

 return 0;
}
