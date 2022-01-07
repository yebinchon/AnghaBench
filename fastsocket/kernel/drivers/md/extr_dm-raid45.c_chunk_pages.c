
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SECTORS_PER_PAGE ;
 int dm_div_up (unsigned int,int ) ;

__attribute__((used)) static inline unsigned chunk_pages(unsigned sectors)
{
 return dm_div_up(sectors, SECTORS_PER_PAGE);
}
