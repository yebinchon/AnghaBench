
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;


 int strncpy (char*,char const*,int) ;

__attribute__((used)) static u64 make_field(const char *text, u64 index)
{
 u64 n;

 strncpy((char *)&n, text, 8);
 return n + index;
}
