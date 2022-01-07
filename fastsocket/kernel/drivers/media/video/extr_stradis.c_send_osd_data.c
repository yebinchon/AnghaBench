
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7146 {int osdtail; int osdhead; int * osdbuf; int dmadebi; } ;


 int IBM_MP2_MASK0 ;
 int IBM_MP2_OSD_ADDR ;
 int IBM_MP2_OSD_DATA ;
 int debNormal ;
 int debiwrite (struct saa7146*,int ,int ,int,int) ;
 int memcpy (int ,int *,int) ;

__attribute__((used)) static void send_osd_data(struct saa7146 *saa)
{
 int size = saa->osdtail - saa->osdhead;
 if (size > 30720)
  size = 30720;

 size = 8 * ((size + 8) >> 3);
 if (size) {
  debiwrite(saa, debNormal, IBM_MP2_OSD_ADDR,
     (saa->osdhead >> 3), 2);
  memcpy(saa->dmadebi, &saa->osdbuf[saa->osdhead], size);
  saa->osdhead += size;

  debiwrite(saa, debNormal, IBM_MP2_OSD_DATA, 0, size);
 }
 if (saa->osdhead >= saa->osdtail) {
  saa->osdhead = saa->osdtail = 0;
  debiwrite(saa, debNormal, IBM_MP2_MASK0, 0xc00c, 2);
 }
}
