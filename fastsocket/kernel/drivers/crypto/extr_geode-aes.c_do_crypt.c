
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ AES_CTRLA_REG ;
 int AES_CTRL_START ;
 scalar_t__ AES_DSTA_REG ;
 int AES_INTRA_PENDING ;
 scalar_t__ AES_INTR_REG ;
 scalar_t__ AES_LENA_REG ;
 int AES_OP_TIMEOUT ;
 scalar_t__ AES_SOURCEA_REG ;
 scalar_t__ _iobase ;
 int cpu_relax () ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int,scalar_t__) ;
 int virt_to_phys (void*) ;

__attribute__((used)) static int
do_crypt(void *src, void *dst, int len, u32 flags)
{
 u32 status;
 u32 counter = AES_OP_TIMEOUT;

 iowrite32(virt_to_phys(src), _iobase + AES_SOURCEA_REG);
 iowrite32(virt_to_phys(dst), _iobase + AES_DSTA_REG);
 iowrite32(len, _iobase + AES_LENA_REG);


 iowrite32(AES_CTRL_START | flags, _iobase + AES_CTRLA_REG);

 do {
  status = ioread32(_iobase + AES_INTR_REG);
  cpu_relax();
 } while(!(status & AES_INTRA_PENDING) && --counter);


 iowrite32((status & 0xFF) | AES_INTRA_PENDING, _iobase + AES_INTR_REG);
 return counter ? 0 : 1;
}
