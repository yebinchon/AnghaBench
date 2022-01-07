
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct transient_c {scalar_t__ next_free; } ;
struct dm_exception_store {struct transient_c* context; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct transient_c* kmalloc (int,int ) ;

__attribute__((used)) static int transient_ctr(struct dm_exception_store *store,
    unsigned argc, char **argv)
{
 struct transient_c *tc;

 tc = kmalloc(sizeof(struct transient_c), GFP_KERNEL);
 if (!tc)
  return -ENOMEM;

 tc->next_free = 0;
 store->context = tc;

 return 0;
}
