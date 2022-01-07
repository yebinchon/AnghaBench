
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAGE_COPY ;
 int PAGE_NONE ;
 int PAGE_READONLY ;
 int PAGE_SHARED ;
 int * protection_map ;

__attribute__((used)) static inline void setup_protection_map(void)
{
 protection_map[0] = PAGE_NONE;
 protection_map[1] = PAGE_READONLY;
 protection_map[2] = PAGE_COPY;
 protection_map[3] = PAGE_COPY;
 protection_map[4] = PAGE_READONLY;
 protection_map[5] = PAGE_READONLY;
 protection_map[6] = PAGE_COPY;
 protection_map[7] = PAGE_COPY;
 protection_map[8] = PAGE_NONE;
 protection_map[9] = PAGE_READONLY;
 protection_map[10] = PAGE_SHARED;
 protection_map[11] = PAGE_SHARED;
 protection_map[12] = PAGE_READONLY;
 protection_map[13] = PAGE_READONLY;
 protection_map[14] = PAGE_SHARED;
 protection_map[15] = PAGE_SHARED;
}
