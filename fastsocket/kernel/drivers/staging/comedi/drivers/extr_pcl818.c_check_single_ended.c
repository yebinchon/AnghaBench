
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PCL818_STATUS ;
 int inb (scalar_t__) ;

__attribute__((used)) static int check_single_ended(unsigned int port)
{
 if (inb(port + PCL818_STATUS) & 0x20) {
  return 1;
 } else {
  return 0;
 }
}
