
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memset (void*,int ,int) ;

__attribute__((used)) static int clear_chunk(unsigned long addr, int len, void *unused)
{
 memset((void *) addr, 0, len);
 return 0;
}
