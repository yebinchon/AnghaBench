
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct s3cmci_host {scalar_t__ base; } ;


 scalar_t__ S3C2410_SDIFSTA ;
 int S3C2410_SDIFSTA_COUNTMASK ;
 int readl (scalar_t__) ;

__attribute__((used)) static inline u32 fifo_free(struct s3cmci_host *host)
{
 u32 fifostat = readl(host->base + S3C2410_SDIFSTA);

 fifostat &= S3C2410_SDIFSTA_COUNTMASK;
 return 63 - fifostat;
}
