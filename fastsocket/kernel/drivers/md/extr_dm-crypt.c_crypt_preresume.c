
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_target {struct crypt_config* private; } ;
struct crypt_config {int flags; } ;


 int DMERR (char*) ;
 int DM_CRYPT_KEY_VALID ;
 int EAGAIN ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int crypt_preresume(struct dm_target *ti)
{
 struct crypt_config *cc = ti->private;

 if (!test_bit(DM_CRYPT_KEY_VALID, &cc->flags)) {
  DMERR("aborting resume - crypt key is not set.");
  return -EAGAIN;
 }

 return 0;
}
