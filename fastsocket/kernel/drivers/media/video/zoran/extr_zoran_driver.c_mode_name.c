
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum zoran_map_mode { ____Placeholder_zoran_map_mode } zoran_map_mode ;


 int ZORAN_MAP_MODE_RAW ;

__attribute__((used)) static inline const char *mode_name(enum zoran_map_mode mode)
{
 return mode == ZORAN_MAP_MODE_RAW ? "V4L" : "JPG";
}
