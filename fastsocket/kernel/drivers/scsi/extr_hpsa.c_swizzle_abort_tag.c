
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int memcpy (int *,int *,int) ;

__attribute__((used)) static void swizzle_abort_tag(u8 *tag)
{
 u8 original_tag[8];

 memcpy(original_tag, tag, 8);
 tag[0] = original_tag[3];
 tag[1] = original_tag[2];
 tag[2] = original_tag[1];
 tag[3] = original_tag[0];
 tag[4] = original_tag[7];
 tag[5] = original_tag[6];
 tag[6] = original_tag[5];
 tag[7] = original_tag[4];
}
