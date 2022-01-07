
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static inline u8 nes_get_encoded_size(int *size)
{
 u8 encoded_size = 0;
 if (*size <= 32) {
  *size = 32;
  encoded_size = 1;
 } else if (*size <= 128) {
  *size = 128;
  encoded_size = 2;
 } else if (*size <= 512) {
  *size = 512;
  encoded_size = 3;
 }
 return (encoded_size);
}
