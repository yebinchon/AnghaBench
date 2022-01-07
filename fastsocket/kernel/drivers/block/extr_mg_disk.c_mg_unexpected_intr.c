
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mg_host {scalar_t__ dev_base; } ;


 scalar_t__ MG_REG_STATUS ;
 int inb (scalar_t__) ;
 int mg_dump_status (char*,int ,struct mg_host*) ;

__attribute__((used)) static void mg_unexpected_intr(struct mg_host *host)
{
 u32 status = inb((unsigned long)host->dev_base + MG_REG_STATUS);

 mg_dump_status("mg_unexpected_intr", status, host);
}
