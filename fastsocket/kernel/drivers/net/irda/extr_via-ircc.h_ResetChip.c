
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u8 ;
typedef int __u16 ;


 int RESET ;
 int WriteReg (int ,int ,int) ;

__attribute__((used)) static void ResetChip(__u16 iobase, __u8 type)
{
 __u8 value;

 value = (type + 2) << 4;
 WriteReg(iobase, RESET, type);
}
