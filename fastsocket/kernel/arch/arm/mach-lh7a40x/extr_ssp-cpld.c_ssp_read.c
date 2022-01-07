
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int frame_size_read; } ;


 int execute_spi_command (int ,int ,int ) ;
 TYPE_1__ ssp_configuration ;

__attribute__((used)) static int ssp_read (void)
{
 return execute_spi_command (0, 0, ssp_configuration.frame_size_read);
}
