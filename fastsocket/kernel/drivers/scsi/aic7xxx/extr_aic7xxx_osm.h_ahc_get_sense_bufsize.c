
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct scsi_sense_data {int dummy; } ;
struct scb {int dummy; } ;
struct ahc_softc {int dummy; } ;



__attribute__((used)) static inline uint32_t
ahc_get_sense_bufsize(struct ahc_softc *ahc, struct scb *scb)
{
 return (sizeof(struct scsi_sense_data));
}
