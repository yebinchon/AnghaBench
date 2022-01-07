
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int PAGE_SIZE ;

__attribute__((used)) static u64 pagesize_code(void)
{
 switch (PAGE_SIZE) {
 default:
 case (8ULL * 1024ULL):
  return 0;
 case (64ULL * 1024ULL):
  return 1;
 case (512ULL * 1024ULL):
  return 2;
 case (4ULL * 1024ULL * 1024ULL):
  return 3;
 case (32ULL * 1024ULL * 1024ULL):
  return 4;
 case (256ULL * 1024ULL * 1024ULL):
  return 5;
 }
}
