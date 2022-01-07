
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned char inbyte(unsigned short port)
{
    unsigned char _v;
    __asm__ __volatile__ ("inb %w1,%b0" :"=a" (_v):"d" (port));
    return _v;
}
