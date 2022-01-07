
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pda_custom_wrapper {int data; int offset; int entry_size; int entries; int len; } ;
struct p54_cal_database {size_t entries; size_t entry_size; size_t offset; size_t len; int data; } ;


 int GFP_KERNEL ;
 struct p54_cal_database* kmalloc (int,int ) ;
 size_t le16_to_cpu (int ) ;
 int memcpy (int ,int ,size_t) ;

__attribute__((used)) static struct p54_cal_database *p54_convert_db(struct pda_custom_wrapper *src,
            size_t total_len)
{
 struct p54_cal_database *dst;
 size_t payload_len, entries, entry_size, offset;

 payload_len = le16_to_cpu(src->len);
 entries = le16_to_cpu(src->entries);
 entry_size = le16_to_cpu(src->entry_size);
 offset = le16_to_cpu(src->offset);
 if (((entries * entry_size + offset) != payload_len) ||
      (payload_len + sizeof(*src) != total_len))
  return ((void*)0);

 dst = kmalloc(sizeof(*dst) + payload_len, GFP_KERNEL);
 if (!dst)
  return ((void*)0);

 dst->entries = entries;
 dst->entry_size = entry_size;
 dst->offset = offset;
 dst->len = payload_len;

 memcpy(dst->data, src->data, payload_len);
 return dst;
}
