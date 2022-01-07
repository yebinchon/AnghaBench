
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int in_be32 (scalar_t__) ;
 scalar_t__ socrates_fpga_pic_iobase ;

__attribute__((used)) static inline uint32_t socrates_fpga_pic_read(int reg)
{
 return in_be32(socrates_fpga_pic_iobase + reg);
}
