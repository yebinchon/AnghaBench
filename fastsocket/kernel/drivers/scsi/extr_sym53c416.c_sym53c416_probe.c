
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ID ;
 int IO_RANGE ;
 int* probeaddrs ;
 int release_region (int,int ) ;
 scalar_t__ request_region (int,int ,int ) ;
 int sym53c416_setup (int *,int*) ;
 scalar_t__ sym53c416_test (int) ;

__attribute__((used)) static void sym53c416_probe(void)
{
 int *base = probeaddrs;
 int ints[2];

 ints[0] = 1;
 for(; *base; base++) {
  if (request_region(*base, IO_RANGE, ID)) {
   if (sym53c416_test(*base)) {
    ints[1] = *base;
    sym53c416_setup(((void*)0), ints);
   }
   release_region(*base, IO_RANGE);
  }
 }
}
