
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TB0219_LED ;
 scalar_t__ tb0219_read (int ) ;

__attribute__((used)) static inline char get_led(void)
{
 return (char)tb0219_read(TB0219_LED);
}
