
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int outb (int ,unsigned long) ;

__attribute__((used)) static void ide_outb(u8 val, unsigned long port)
{
 outb(val, port);
}
