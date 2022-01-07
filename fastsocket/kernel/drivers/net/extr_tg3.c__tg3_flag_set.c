
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum TG3_FLAGS { ____Placeholder_TG3_FLAGS } TG3_FLAGS ;


 int set_bit (int,unsigned long*) ;

__attribute__((used)) static inline void _tg3_flag_set(enum TG3_FLAGS flag, unsigned long *bits)
{
 set_bit(flag, bits);
}
