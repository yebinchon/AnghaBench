
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IOADDR ;
 int outb (int ,scalar_t__) ;

__attribute__((used)) static inline void
CLEAR_INT(void) {
 outb(0, IOADDR+8);
}
