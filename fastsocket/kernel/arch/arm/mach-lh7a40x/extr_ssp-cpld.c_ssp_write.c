
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int frame_size_write; } ;


 int execute_spi_command (int ,int ,int ) ;
 TYPE_1__ ssp_configuration ;

__attribute__((used)) static int ssp_write (u16 data)
{
 execute_spi_command (data, ssp_configuration.frame_size_write, 0);
 return 0;
}
