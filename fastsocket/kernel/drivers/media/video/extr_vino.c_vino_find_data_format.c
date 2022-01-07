
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ __u32 ;
struct TYPE_2__ {scalar_t__ pixelformat; } ;


 int VINO_DATA_FMT_COUNT ;
 int VINO_DATA_FMT_NONE ;
 TYPE_1__* vino_data_formats ;

__attribute__((used)) static int vino_find_data_format(__u32 pixelformat)
{
 int i;

 for (i = 0; i < VINO_DATA_FMT_COUNT; i++) {
  if (vino_data_formats[i].pixelformat == pixelformat)
   return i;
 }

 return VINO_DATA_FMT_NONE;
}
