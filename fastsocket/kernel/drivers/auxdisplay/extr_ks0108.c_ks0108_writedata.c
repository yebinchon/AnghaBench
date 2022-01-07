
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ks0108_parport ;
 int parport_write_data (int ,unsigned char) ;

void ks0108_writedata(unsigned char byte)
{
 parport_write_data(ks0108_parport, byte);
}
