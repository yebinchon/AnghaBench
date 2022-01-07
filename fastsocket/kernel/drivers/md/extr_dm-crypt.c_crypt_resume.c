
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_target {struct crypt_config* private; } ;
struct crypt_config {int flags; } ;


 int DM_CRYPT_SUSPENDED ;
 int clear_bit (int ,int *) ;

__attribute__((used)) static void crypt_resume(struct dm_target *ti)
{
 struct crypt_config *cc = ti->private;

 clear_bit(DM_CRYPT_SUSPENDED, &cc->flags);
}
