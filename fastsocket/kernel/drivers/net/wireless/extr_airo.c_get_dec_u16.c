
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;



__attribute__((used)) static int get_dec_u16( char *buffer, int *start, int limit ) {
 u16 value;
 int valid = 0;
 for (value = 0; *start < limit && buffer[*start] >= '0' &&
   buffer[*start] <= '9'; (*start)++) {
  valid = 1;
  value *= 10;
  value += buffer[*start] - '0';
 }
 if ( !valid ) return -1;
 return value;
}
