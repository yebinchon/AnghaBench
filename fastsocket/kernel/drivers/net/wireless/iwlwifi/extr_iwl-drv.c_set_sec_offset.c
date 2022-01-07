
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct iwl_firmware_pieces {TYPE_2__* img; } ;
typedef enum iwl_ucode_type { ____Placeholder_iwl_ucode_type } iwl_ucode_type ;
struct TYPE_4__ {TYPE_1__* sec; } ;
struct TYPE_3__ {int offset; } ;



__attribute__((used)) static void set_sec_offset(struct iwl_firmware_pieces *pieces,
      enum iwl_ucode_type type,
      int sec,
      u32 offset)
{
 pieces->img[type].sec[sec].offset = offset;
}
