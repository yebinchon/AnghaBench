
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AS_Host ;


 int ASR_DBR ;
 int ASR_INT ;
 int CMND_SBT ;
 int CMND_XFERINFO ;
 int SBIC_DATA ;
 int SBIC_SSR ;
 int acornscsi_sbic_issuecmd (int *,int) ;
 int acornscsi_sbic_wait (int *,int ,int ,int,char*) ;
 unsigned char sbic_arm_read (int *,int ) ;

__attribute__((used)) static
unsigned char acornscsi_readmessagebyte(AS_Host *host)
{
    unsigned char message;

    acornscsi_sbic_issuecmd(host, CMND_XFERINFO | CMND_SBT);

    acornscsi_sbic_wait(host, ASR_DBR, ASR_DBR, 1000, "for message byte");

    message = sbic_arm_read(host, SBIC_DATA);


    acornscsi_sbic_wait(host, ASR_INT, ASR_INT, 1000, "for interrupt after message byte");

    sbic_arm_read(host, SBIC_SSR);

    return message;
}
