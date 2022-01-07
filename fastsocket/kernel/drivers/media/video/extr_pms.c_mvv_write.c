
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int io_port ;
 int outw (int,int ) ;

__attribute__((used)) static inline void mvv_write(u8 index, u8 value)
{
 outw(index|(value<<8), io_port);
}
