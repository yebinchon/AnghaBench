
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int adapter_t ;


 int bist_wr (int *,int,int,int) ;

__attribute__((used)) static int enable_mem(adapter_t *adapter, int moduleid)
{

 (void) bist_wr(adapter,moduleid, 0x00, 0x00);
 return 0;
}
