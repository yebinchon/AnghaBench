
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int PS3_VENDOR_ID_NONE ;
 int strncpy (char*,char const*,int) ;

__attribute__((used)) static u64 make_first_field(const char *text, u64 index)
{
 u64 n;

 strncpy((char *)&n, text, 8);
 return PS3_VENDOR_ID_NONE + (n >> 32) + index;
}
