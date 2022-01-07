
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char ROW25_COLUMN2_MINUTES_UNITS ;
 unsigned char ROW25_COLUMN3_MINUTES_TENS ;

__attribute__((used)) static inline int saa5246a_extract_minutes_from_infobits(
    unsigned char infobits[10])
{
 int minutes_tens, minutes_units;

 minutes_units = infobits[2] & ROW25_COLUMN2_MINUTES_UNITS;
 minutes_tens = infobits[3] & ROW25_COLUMN3_MINUTES_TENS;

 return((minutes_tens << 4) | minutes_units);
}
