
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ISAPNP_CFG_ACTIVATE ;
 int isapnp_device (unsigned char) ;
 int isapnp_write_byte (int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void isapnp_activate(unsigned char logdev)
{
 isapnp_device(logdev);
 isapnp_write_byte(ISAPNP_CFG_ACTIVATE, 1);
 udelay(250);
}
