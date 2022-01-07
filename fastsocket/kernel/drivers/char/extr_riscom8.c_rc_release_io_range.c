
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct riscom_board {scalar_t__ base; } ;


 int RC_NIOPORT ;
 scalar_t__ RC_TO_ISA (int ) ;
 int * rc_ioport ;
 int release_region (scalar_t__,int) ;

__attribute__((used)) static void rc_release_io_range(struct riscom_board * const bp)
{
 int i;

 for (i = 0; i < RC_NIOPORT; i++)
  release_region(RC_TO_ISA(rc_ioport[i]) + bp->base, 1);
}
