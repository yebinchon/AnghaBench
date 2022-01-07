
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int READ_REGISTER ;
 unsigned int b1_get_word (unsigned int) ;
 int b1_put_byte (unsigned int,int ) ;
 int b1_put_word (unsigned int,unsigned int) ;

__attribute__((used)) static inline unsigned int b1_rd_reg(unsigned int base,
                                     unsigned int reg)
{
 b1_put_byte(base, READ_REGISTER);
        b1_put_word(base, reg);
        return b1_get_word(base);

}
