
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline void patch_offset(void *insnbuf,
    unsigned long ip, unsigned long dest)
{
        *(unsigned long *)(insnbuf+1) = dest-ip-5;
}
