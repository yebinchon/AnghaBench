
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int ITERATIONS_SHORT ;
 int sonypi_call3 (int,int ,int ) ;
 int wait_on_command (int ,int ,int ) ;

__attribute__((used)) static void sonypi_set(u8 fn, u8 v)
{
 wait_on_command(0, sonypi_call3(0x90, fn, v), ITERATIONS_SHORT);
}
