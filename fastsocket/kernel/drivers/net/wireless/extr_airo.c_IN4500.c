
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
 unsigned short inb (scalar_t__) ;
 unsigned short inw (scalar_t__) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static u16 IN4500( struct airo_info *ai, u16 reg ) {
 unsigned short rc;

 if (test_bit(FLAG_MPI,&ai->flags))
  reg <<= 1;
 if ( !do8bitIO )
  rc = inw( ai->dev->base_addr + reg );
 else {
  rc = inb( ai->dev->base_addr + reg );
  rc += ((int)inb( ai->dev->base_addr + reg + 1 )) << 8;
 }
 return rc;
}
