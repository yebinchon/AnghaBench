
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct niu {int dummy; } ;


 int MIF_FRAME_OUTPUT ;
 int MII_WRITE_OP (int,int,int) ;
 int mdio_wait (struct niu*) ;
 int nw64 (int ,int ) ;

__attribute__((used)) static int mii_write(struct niu *np, int port, int reg, int data)
{
 int err;

 nw64(MIF_FRAME_OUTPUT, MII_WRITE_OP(port, reg, data));
 err = mdio_wait(np);
 if (err < 0)
  return err;

 return 0;
}
