
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u8 ;


 scalar_t__ isdigit (unsigned char) ;
 char toupper (unsigned char) ;

__attribute__((used)) static u8 hex_val(unsigned char c)
{
 return isdigit(c) ? c - '0' : toupper(c) - 'A' + 10;
}
