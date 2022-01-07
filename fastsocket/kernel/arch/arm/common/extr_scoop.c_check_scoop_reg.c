
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scoop_dev {scalar_t__ base; } ;


 scalar_t__ SCOOP_MCR ;
 unsigned short ioread16 (scalar_t__) ;
 int iowrite16 (int,scalar_t__) ;

__attribute__((used)) static void check_scoop_reg(struct scoop_dev *sdev)
{
 unsigned short mcr;

 mcr = ioread16(sdev->base + SCOOP_MCR);
 if ((mcr & 0x100) == 0)
  iowrite16(0x0101, sdev->base + SCOOP_MCR);
}
