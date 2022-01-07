
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PGD_TABLE_SIZE ;
 int memset (void*,int ,int ) ;

__attribute__((used)) static void pgd_ctor(void *addr)
{
 memset(addr, 0, PGD_TABLE_SIZE);
}
