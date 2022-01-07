
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bq4802 {scalar_t__ ioport; } ;


 int outb (int ,scalar_t__) ;

__attribute__((used)) static void bq4802_write_io(struct bq4802 *p, int off, u8 val)
{
 outb(val, p->ioport + off);
}
