
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int iob () ;
 scalar_t__* kn0x_erraddr ;

__attribute__((used)) static inline void dec_ecc_be_ack(void)
{
 *kn0x_erraddr = 0;
 iob();
}
