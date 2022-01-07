
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct airo_info {TYPE_1__* dev; int flags; } ;
struct TYPE_2__ {scalar_t__ base_addr; } ;


 int FLAG_MPI ;
 int do8bitIO ;
 int outb (int,scalar_t__) ;
 int outw (int,scalar_t__) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void OUT4500( struct airo_info *ai, u16 reg, u16 val ) {
 if (test_bit(FLAG_MPI,&ai->flags))
  reg <<= 1;
 if ( !do8bitIO )
  outw( val, ai->dev->base_addr + reg );
 else {
  outb( val & 0xff, ai->dev->base_addr + reg );
  outb( val >> 8, ai->dev->base_addr + reg + 1 );
 }
}
