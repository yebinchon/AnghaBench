
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int send_bit (unsigned char) ;

__attribute__((used)) static void send_byte(unsigned char byte)
{
 int i = 0;

 for (i = 7; i >= 0; i--)
  send_bit((byte >> i) & 0x01);
}
