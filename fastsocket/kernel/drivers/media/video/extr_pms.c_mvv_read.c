
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int data_port ;
 int inb (int ) ;
 int io_port ;
 int outb (int ,int ) ;

__attribute__((used)) static inline u8 mvv_read(u8 index)
{
 outb(index, io_port);
 return inb(data_port);
}
