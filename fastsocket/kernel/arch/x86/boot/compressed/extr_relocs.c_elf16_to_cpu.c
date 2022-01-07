
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int le16_to_cpu (int ) ;

__attribute__((used)) static uint16_t elf16_to_cpu(uint16_t val)
{
 return le16_to_cpu(val);
}
