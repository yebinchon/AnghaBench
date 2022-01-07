
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int insl (unsigned int,void*,unsigned long) ;

__attribute__((used)) static inline void nsp_multi_read_4(unsigned int BaseAddr,
        unsigned int Register,
        void *buf,
        unsigned long count)
{
 insl(BaseAddr + Register, buf, count);
}
