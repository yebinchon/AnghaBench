
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int le32_to_cpu (int ) ;

__attribute__((used)) static uint32_t elf32_to_cpu(uint32_t val)
{
 return le32_to_cpu(val);
}
