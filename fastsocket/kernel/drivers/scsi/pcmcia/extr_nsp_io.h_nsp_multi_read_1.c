
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int insb (unsigned int,void*,unsigned long) ;

__attribute__((used)) static inline void nsp_multi_read_1(unsigned int BaseAddr,
        unsigned int Register,
        void *buf,
        unsigned long count)
{
 insb(BaseAddr + Register, buf, count);
}
