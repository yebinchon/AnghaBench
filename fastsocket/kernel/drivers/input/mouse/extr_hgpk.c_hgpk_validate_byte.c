
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int hgpk_validate_byte(unsigned char *packet)
{
 return (packet[0] & 0x0C) != 0x08;
}
