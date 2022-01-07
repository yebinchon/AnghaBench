
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct transaction {unsigned int wlen; unsigned int rlen; int * rdata; int const* wdata; int command; } ;


 int ENODEV ;
 int acpi_ec_transaction (int ,struct transaction*) ;
 int first_ec ;

int ec_transaction(u8 command,
     const u8 * wdata, unsigned wdata_len,
     u8 * rdata, unsigned rdata_len,
     int force_poll)
{
 struct transaction t = {.command = command,
    .wdata = wdata, .rdata = rdata,
    .wlen = wdata_len, .rlen = rdata_len};
 if (!first_ec)
  return -ENODEV;

 return acpi_ec_transaction(first_ec, &t);
}
