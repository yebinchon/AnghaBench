
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct obj_mlmeex {int id; int state; int code; int size; } ;
struct obj_mlme {int id; int state; int code; } ;
struct obj_frequencies {int nr; int* mhz; } ;
struct obj_buffer {int size; int addr; } ;
struct obj_bsslist {int nr; int * bsslist; } ;
struct obj_bss {int age; int channel; int capinfo; int rates; int basic_rates; } ;
struct obj_attachment {int id; int size; } ;


 int BUG () ;
 void* le16_to_cpu (int) ;
 void* le32_to_cpu (int) ;

void
mgt_le_to_cpu(int type, void *data)
{
 switch (type) {
 case 128:
  *(u32 *) data = le32_to_cpu(*(u32 *) data);
  break;
 case 135:{
   struct obj_buffer *buff = data;
   buff->size = le32_to_cpu(buff->size);
   buff->addr = le32_to_cpu(buff->addr);
   break;
  }
 case 137:{
   struct obj_bss *bss = data;
   bss->age = le16_to_cpu(bss->age);
   bss->channel = le16_to_cpu(bss->channel);
   bss->capinfo = le16_to_cpu(bss->capinfo);
   bss->rates = le16_to_cpu(bss->rates);
   bss->basic_rates = le16_to_cpu(bss->basic_rates);
   break;
  }
 case 136:{
   struct obj_bsslist *list = data;
   int i;
   list->nr = le32_to_cpu(list->nr);
   for (i = 0; i < list->nr; i++)
    mgt_le_to_cpu(137, &list->bsslist[i]);
   break;
  }
 case 134:{
   struct obj_frequencies *freq = data;
   int i;
   freq->nr = le16_to_cpu(freq->nr);
   for (i = 0; i < freq->nr; i++)
    freq->mhz[i] = le16_to_cpu(freq->mhz[i]);
   break;
  }
 case 132:{
   struct obj_mlme *mlme = data;
   mlme->id = le16_to_cpu(mlme->id);
   mlme->state = le16_to_cpu(mlme->state);
   mlme->code = le16_to_cpu(mlme->code);
   break;
  }
 case 131:{
   struct obj_mlmeex *mlme = data;
   mlme->id = le16_to_cpu(mlme->id);
   mlme->state = le16_to_cpu(mlme->state);
   mlme->code = le16_to_cpu(mlme->code);
   mlme->size = le16_to_cpu(mlme->size);
   break;
  }
 case 138:{
   struct obj_attachment *attach = data;
   attach->id = le16_to_cpu(attach->id);
   attach->size = le16_to_cpu(attach->size);
   break;
 }
 case 129:
 case 133:
 case 139:
 case 130:
  break;
 default:
  BUG();
 }
}
