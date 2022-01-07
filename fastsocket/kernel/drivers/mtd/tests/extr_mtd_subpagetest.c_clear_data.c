
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memset (unsigned char*,int ,size_t) ;

__attribute__((used)) static inline void clear_data(unsigned char *buf, size_t len)
{
 memset(buf, 0, len);
}
