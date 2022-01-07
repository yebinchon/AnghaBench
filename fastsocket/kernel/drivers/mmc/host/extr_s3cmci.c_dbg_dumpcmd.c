
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3cmci_host {int dummy; } ;
struct mmc_command {int dummy; } ;



__attribute__((used)) static void dbg_dumpcmd(struct s3cmci_host *host,
   struct mmc_command *cmd, int fail) { }
