
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_9__ {size_t misc; scalar_t__ length; int recvb; int sendb; } ;
struct pending_request {TYPE_1__ req; } ;
struct file_info {struct csr1212_keyval** csr1212_dirs; TYPE_8__* host; } ;
struct TYPE_10__ {struct csr1212_dentry* dentries_head; } ;
struct TYPE_11__ {TYPE_2__ directory; } ;
struct csr1212_keyval {TYPE_3__ value; struct csr1212_keyval* next; } ;
struct csr1212_dentry {int kv; struct csr1212_dentry* next; } ;
struct csr1212_csr_rom_cache {scalar_t__ len; TYPE_6__* filled_head; struct csr1212_keyval* layout_head; struct csr1212_keyval* layout_tail; scalar_t__ size; int data; TYPE_6__* filled_tail; } ;
typedef int dr ;
struct TYPE_13__ {TYPE_4__* rom; } ;
struct TYPE_15__ {TYPE_5__ csr; } ;
struct TYPE_14__ {scalar_t__ offset_end; scalar_t__ offset_start; } ;
struct TYPE_12__ {int root_kv; } ;


 int CSR1212_FREE (struct csr1212_csr_rom_cache*) ;
 int CSR1212_KV_ID_VENDOR ;
 int CSR1212_SUCCESS ;
 int EFAULT ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 size_t RAW1394_MAX_USER_CSR_DIRS ;
 scalar_t__ copy_from_user (int ,int ,scalar_t__) ;
 scalar_t__ copy_to_user (int ,size_t*,int) ;
 int csr1212_attach_keyval_to_directory (int ,int ) ;
 int csr1212_detach_keyval_from_directory (int ,int ) ;
 struct csr1212_keyval* csr1212_new_directory (int ) ;
 int csr1212_parse_keyval (struct csr1212_keyval*,struct csr1212_csr_rom_cache*) ;
 int csr1212_release_keyval (struct csr1212_keyval*) ;
 struct csr1212_csr_rom_cache* csr1212_rom_cache_malloc (int ,scalar_t__) ;
 int free_pending_request (struct pending_request*) ;
 int hpsb_update_config_rom_image (TYPE_8__*) ;
 int int2ptr (int ) ;
 int kfree (TYPE_6__*) ;
 TYPE_6__* kmalloc (int,int ) ;

__attribute__((used)) static int modify_config_rom(struct file_info *fi, struct pending_request *req)
{
 struct csr1212_keyval *kv;
 struct csr1212_csr_rom_cache *cache;
 struct csr1212_dentry *dentry;
 u32 dr;
 int ret = 0;

 if (req->req.misc == ~0) {
  if (req->req.length == 0)
   return -EINVAL;


  for (dr = 0;
       dr < RAW1394_MAX_USER_CSR_DIRS && fi->csr1212_dirs[dr];
       dr++) ;

  if (dr == RAW1394_MAX_USER_CSR_DIRS)
   return -ENOMEM;

  fi->csr1212_dirs[dr] =
      csr1212_new_directory(CSR1212_KV_ID_VENDOR);
  if (!fi->csr1212_dirs[dr])
   return -ENOMEM;
 } else {
  dr = req->req.misc;
  if (!fi->csr1212_dirs[dr])
   return -EINVAL;


  for (dentry =
       fi->csr1212_dirs[dr]->value.directory.dentries_head;
       dentry; dentry = dentry->next) {
   csr1212_detach_keyval_from_directory(fi->host->csr.rom->
            root_kv,
            dentry->kv);
  }

  if (req->req.length == 0) {
   csr1212_release_keyval(fi->csr1212_dirs[dr]);
   fi->csr1212_dirs[dr] = ((void*)0);

   hpsb_update_config_rom_image(fi->host);
   free_pending_request(req);
   return 0;
  }
 }

 cache = csr1212_rom_cache_malloc(0, req->req.length);
 if (!cache) {
  csr1212_release_keyval(fi->csr1212_dirs[dr]);
  fi->csr1212_dirs[dr] = ((void*)0);
  return -ENOMEM;
 }

 cache->filled_head = kmalloc(sizeof(*cache->filled_head), GFP_KERNEL);
 if (!cache->filled_head) {
  csr1212_release_keyval(fi->csr1212_dirs[dr]);
  fi->csr1212_dirs[dr] = ((void*)0);
  CSR1212_FREE(cache);
  return -ENOMEM;
 }
 cache->filled_tail = cache->filled_head;

 if (copy_from_user(cache->data, int2ptr(req->req.sendb),
      req->req.length)) {
  csr1212_release_keyval(fi->csr1212_dirs[dr]);
  fi->csr1212_dirs[dr] = ((void*)0);
  ret = -EFAULT;
 } else {
  cache->len = req->req.length;
  cache->filled_head->offset_start = 0;
  cache->filled_head->offset_end = cache->size - 1;

  cache->layout_head = cache->layout_tail = fi->csr1212_dirs[dr];

  ret = CSR1212_SUCCESS;

  for (kv = cache->layout_head; ret == CSR1212_SUCCESS && kv;
       kv = kv->next) {
   ret = csr1212_parse_keyval(kv, cache);
  }


  for (dentry =
       fi->csr1212_dirs[dr]->value.directory.dentries_head;
       ret == CSR1212_SUCCESS && dentry; dentry = dentry->next) {
   ret =
       csr1212_attach_keyval_to_directory(fi->host->csr.
              rom->root_kv,
              dentry->kv);
  }

  if (ret == CSR1212_SUCCESS) {
   ret = hpsb_update_config_rom_image(fi->host);

   if (ret >= 0 && copy_to_user(int2ptr(req->req.recvb),
           &dr, sizeof(dr))) {
    ret = -ENOMEM;
   }
  }
 }
 kfree(cache->filled_head);
 CSR1212_FREE(cache);

 if (ret >= 0) {


  free_pending_request(req);
  return 0;
 } else {
  for (dentry =
       fi->csr1212_dirs[dr]->value.directory.dentries_head;
       dentry; dentry = dentry->next) {
   csr1212_detach_keyval_from_directory(fi->host->csr.rom->
            root_kv,
            dentry->kv);
  }
  csr1212_release_keyval(fi->csr1212_dirs[dr]);
  fi->csr1212_dirs[dr] = ((void*)0);
  return ret;
 }
}
