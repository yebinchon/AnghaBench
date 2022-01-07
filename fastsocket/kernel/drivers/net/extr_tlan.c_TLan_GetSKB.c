
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tlan_list_tag {TYPE_1__* buffer; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {unsigned long address; } ;



__attribute__((used)) static inline struct sk_buff *
TLan_GetSKB( const struct tlan_list_tag *tag)
{
 unsigned long addr;

 addr = tag->buffer[9].address;
 addr |= (tag->buffer[8].address << 16) << 16;
 return (struct sk_buff *) addr;
}
