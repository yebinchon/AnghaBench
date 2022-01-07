
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct std_name {int name; } ;


 int memcmp (char const*,int ,unsigned int) ;
 unsigned int strlen (int ) ;

__attribute__((used)) static const struct std_name *find_std_name(const struct std_name *arrPtr,
         unsigned int arrSize,
         const char *bufPtr,
         unsigned int bufSize)
{
 unsigned int idx;
 const struct std_name *p;
 for (idx = 0; idx < arrSize; idx++) {
  p = arrPtr + idx;
  if (strlen(p->name) != bufSize) continue;
  if (!memcmp(bufPtr,p->name,bufSize)) return p;
 }
 return ((void*)0);
}
