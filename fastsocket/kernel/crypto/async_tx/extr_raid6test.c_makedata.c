
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int PAGE_SIZE ;
 int * data ;
 int * dataptrs ;
 int * page_address (int ) ;
 int random32 () ;

__attribute__((used)) static void makedata(int disks)
{
 int i, j;

 for (i = 0; i < disks; i++) {
  for (j = 0; j < PAGE_SIZE/sizeof(u32); j += sizeof(u32)) {
   u32 *p = page_address(data[i]) + j;

   *p = random32();
  }

  dataptrs[i] = data[i];
 }
}
