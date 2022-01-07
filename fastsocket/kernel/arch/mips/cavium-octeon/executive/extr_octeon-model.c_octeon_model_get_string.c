
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 char const* octeon_model_get_string_buffer (int ,char*) ;

const char *octeon_model_get_string(uint32_t chip_id)
{
 static char buffer[32];
 return octeon_model_get_string_buffer(chip_id, buffer);
}
