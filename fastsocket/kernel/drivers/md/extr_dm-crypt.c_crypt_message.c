
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_target {struct crypt_config* private; } ;
struct crypt_config {TYPE_1__* iv_gen_ops; int flags; } ;
struct TYPE_2__ {int (* init ) (struct crypt_config*) ;int (* wipe ) (struct crypt_config*) ;} ;


 int DMWARN (char*) ;
 int DM_CRYPT_SUSPENDED ;
 int EINVAL ;
 int crypt_set_key (struct crypt_config*,char*) ;
 int crypt_wipe_key (struct crypt_config*) ;
 int strcasecmp (char*,char*) ;
 int stub1 (struct crypt_config*) ;
 int stub2 (struct crypt_config*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int crypt_message(struct dm_target *ti, unsigned argc, char **argv)
{
 struct crypt_config *cc = ti->private;
 int ret = -EINVAL;

 if (argc < 2)
  goto error;

 if (!strcasecmp(argv[0], "key")) {
  if (!test_bit(DM_CRYPT_SUSPENDED, &cc->flags)) {
   DMWARN("not suspended during key manipulation.");
   return -EINVAL;
  }
  if (argc == 3 && !strcasecmp(argv[1], "set")) {
   ret = crypt_set_key(cc, argv[2]);
   if (ret)
    return ret;
   if (cc->iv_gen_ops && cc->iv_gen_ops->init)
    ret = cc->iv_gen_ops->init(cc);
   return ret;
  }
  if (argc == 2 && !strcasecmp(argv[1], "wipe")) {
   if (cc->iv_gen_ops && cc->iv_gen_ops->wipe) {
    ret = cc->iv_gen_ops->wipe(cc);
    if (ret)
     return ret;
   }
   return crypt_wipe_key(cc);
  }
 }

error:
 DMWARN("unrecognised message received.");
 return -EINVAL;
}
