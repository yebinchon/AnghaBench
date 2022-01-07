
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_target {char* error; } ;
struct dm_snapshot {int dummy; } ;
struct dm_exception_store_type {int (* ctr ) (struct dm_exception_store*,int ,int *) ;} ;
struct dm_exception_store {struct dm_snapshot* snap; struct dm_exception_store_type* type; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct dm_exception_store_type* get_type (char*) ;
 int kfree (struct dm_exception_store*) ;
 struct dm_exception_store* kmalloc (int,int ) ;
 int put_type (struct dm_exception_store_type*) ;
 int set_chunk_size (struct dm_exception_store*,char*,char**) ;
 int stub1 (struct dm_exception_store*,int ,int *) ;
 char toupper (char) ;

int dm_exception_store_create(struct dm_target *ti, int argc, char **argv,
         struct dm_snapshot *snap,
         unsigned *args_used,
         struct dm_exception_store **store)
{
 int r = 0;
 struct dm_exception_store_type *type = ((void*)0);
 struct dm_exception_store *tmp_store;
 char persistent;

 if (argc < 2) {
  ti->error = "Insufficient exception store arguments";
  return -EINVAL;
 }

 tmp_store = kmalloc(sizeof(*tmp_store), GFP_KERNEL);
 if (!tmp_store) {
  ti->error = "Exception store allocation failed";
  return -ENOMEM;
 }

 persistent = toupper(*argv[0]);
 if (persistent == 'P')
  type = get_type("P");
 else if (persistent == 'N')
  type = get_type("N");
 else {
  ti->error = "Persistent flag is not P or N";
  r = -EINVAL;
  goto bad_type;
 }

 if (!type) {
  ti->error = "Exception store type not recognised";
  r = -EINVAL;
  goto bad_type;
 }

 tmp_store->type = type;
 tmp_store->snap = snap;

 r = set_chunk_size(tmp_store, argv[1], &ti->error);
 if (r)
  goto bad;

 r = type->ctr(tmp_store, 0, ((void*)0));
 if (r) {
  ti->error = "Exception store type constructor failed";
  goto bad;
 }

 *args_used = 2;
 *store = tmp_store;
 return 0;

bad:
 put_type(type);
bad_type:
 kfree(tmp_store);
 return r;
}
