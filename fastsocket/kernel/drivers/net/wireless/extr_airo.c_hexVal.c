
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;



__attribute__((used)) static inline u8 hexVal(char c) {
 if (c>='0' && c<='9') return c -= '0';
 if (c>='a' && c<='f') return c -= 'a'-10;
 if (c>='A' && c<='F') return c -= 'A'-10;
 return 0;
}
