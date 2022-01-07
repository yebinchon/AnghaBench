
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum spi_signal_type { ____Placeholder_spi_signal_type } spi_signal_type ;
struct TYPE_3__ {int value; int name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int SPI_SIGNAL_UNKNOWN ;
 TYPE_1__* signal_types ;
 int strlen (int ) ;
 scalar_t__ strncmp (char const*,int ,int) ;

__attribute__((used)) static inline enum spi_signal_type spi_signal_to_value(const char *name)
{
 int i, len;

 for (i = 0; i < ARRAY_SIZE(signal_types); i++) {
  len = strlen(signal_types[i].name);
  if (strncmp(name, signal_types[i].name, len) == 0 &&
      (name[len] == '\n' || name[len] == '\0'))
   return signal_types[i].value;
 }
 return SPI_SIGNAL_UNKNOWN;
}
