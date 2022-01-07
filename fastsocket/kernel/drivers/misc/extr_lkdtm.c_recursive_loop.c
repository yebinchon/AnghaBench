
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memset (char*,int,int) ;
 int recur_count ;

__attribute__((used)) static int recursive_loop(int a)
{
 char buf[1024];

 memset(buf,0xFF,1024);
 recur_count--;
 if (!recur_count)
  return 0;
 else
         return recursive_loop(a);
}
