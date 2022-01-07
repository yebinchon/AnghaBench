
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IDE_BUSY ;
 int IDE_DRQ ;
 int pcd_current ;
 int status_reg (int ) ;

__attribute__((used)) static int pcd_ready(void)
{
 return (((status_reg(pcd_current) & (IDE_BUSY | IDE_DRQ)) == IDE_DRQ));
}
