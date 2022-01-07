
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct niu {int dummy; } ;


 int MDIO_ADDR_OP (int,int,int) ;
 int MDIO_WRITE_OP (int,int,int) ;
 int MIF_FRAME_OUTPUT ;
 int mdio_wait (struct niu*) ;
 int nw64 (int ,int ) ;

__attribute__((used)) static int mdio_write(struct niu *np, int port, int dev, int reg, int data)
{
 int err;

 nw64(MIF_FRAME_OUTPUT, MDIO_ADDR_OP(port, dev, reg));
 err = mdio_wait(np);
 if (err < 0)
  return err;

 nw64(MIF_FRAME_OUTPUT, MDIO_WRITE_OP(port, dev, data));
 err = mdio_wait(np);
 if (err < 0)
  return err;

 return 0;
}
