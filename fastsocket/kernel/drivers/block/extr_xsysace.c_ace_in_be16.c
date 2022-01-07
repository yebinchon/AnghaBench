
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ace_device {scalar_t__ baseaddr; } ;


 int in_be16 (scalar_t__) ;

__attribute__((used)) static u16 ace_in_be16(struct ace_device *ace, int reg)
{
 return in_be16(ace->baseaddr + reg);
}
