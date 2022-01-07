
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_ioread {unsigned int sync_key_len; int * sync_key_ptr; } ;


 int GFP_KERNEL ;
 int kfree (int *) ;
 int * kmalloc (unsigned int,int ) ;
 int memcmp (char const*,int *,unsigned int) ;
 int memcpy (int *,char const*,unsigned int) ;

void pvr2_ioread_set_sync_key(struct pvr2_ioread *cp,
         const char *sync_key_ptr,
         unsigned int sync_key_len)
{
 if (!cp) return;

 if (!sync_key_ptr) sync_key_len = 0;
 if ((sync_key_len == cp->sync_key_len) &&
     ((!sync_key_len) ||
      (!memcmp(sync_key_ptr,cp->sync_key_ptr,sync_key_len)))) return;

 if (sync_key_len != cp->sync_key_len) {
  if (cp->sync_key_ptr) {
   kfree(cp->sync_key_ptr);
   cp->sync_key_ptr = ((void*)0);
  }
  cp->sync_key_len = 0;
  if (sync_key_len) {
   cp->sync_key_ptr = kmalloc(sync_key_len,GFP_KERNEL);
   if (cp->sync_key_ptr) {
    cp->sync_key_len = sync_key_len;
   }
  }
 }
 if (!cp->sync_key_len) return;
 memcpy(cp->sync_key_ptr,sync_key_ptr,cp->sync_key_len);
}
