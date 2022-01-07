
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pool {int pmd; } ;
typedef int dm_thin_id ;


 int DMWARN (char*,char*,char*) ;
 int check_arg_count (unsigned int,int) ;
 int dm_pool_create_snap (int ,int ,int ) ;
 int read_dev_id (char*,int *,int) ;

__attribute__((used)) static int process_create_snap_mesg(unsigned argc, char **argv, struct pool *pool)
{
 dm_thin_id dev_id;
 dm_thin_id origin_dev_id;
 int r;

 r = check_arg_count(argc, 3);
 if (r)
  return r;

 r = read_dev_id(argv[1], &dev_id, 1);
 if (r)
  return r;

 r = read_dev_id(argv[2], &origin_dev_id, 1);
 if (r)
  return r;

 r = dm_pool_create_snap(pool->pmd, dev_id, origin_dev_id);
 if (r) {
  DMWARN("Creation of new snapshot %s of device %s failed.",
         argv[1], argv[2]);
  return r;
 }

 return 0;
}
