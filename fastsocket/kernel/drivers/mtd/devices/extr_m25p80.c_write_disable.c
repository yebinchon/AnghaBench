
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct m25p {int spi; } ;


 int OPCODE_WRDI ;
 int spi_write_then_read (int ,int *,int,int *,int ) ;

__attribute__((used)) static inline int write_disable(struct m25p *flash)
{
 u8 code = OPCODE_WRDI;

 return spi_write_then_read(flash->spi, &code, 1, ((void*)0), 0);
}
