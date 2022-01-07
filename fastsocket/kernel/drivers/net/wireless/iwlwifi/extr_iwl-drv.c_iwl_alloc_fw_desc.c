
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_drv {int dummy; } ;
struct fw_sec {int data; int offset; int size; } ;
struct fw_desc {int * data; int len; int offset; } ;


 int EINVAL ;
 int ENOMEM ;
 int memcpy (void*,int ,int ) ;
 void* vmalloc (int ) ;

__attribute__((used)) static int iwl_alloc_fw_desc(struct iwl_drv *drv, struct fw_desc *desc,
        struct fw_sec *sec)
{
 void *data;

 desc->data = ((void*)0);

 if (!sec || !sec->size)
  return -EINVAL;

 data = vmalloc(sec->size);
 if (!data)
  return -ENOMEM;

 desc->len = sec->size;
 desc->offset = sec->offset;
 memcpy(data, sec->data, desc->len);
 desc->data = data;

 return 0;
}
