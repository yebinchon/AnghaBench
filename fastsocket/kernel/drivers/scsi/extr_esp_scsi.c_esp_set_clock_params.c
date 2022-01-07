
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct esp {int cfreq; int cfact; int sync_defp; int neg_defp; int ccycle; int ctick; } ;


 int ESP_HZ_TO_CYCLE (int) ;
 int ESP_NEG_DEFP (int,int) ;
 int ESP_TICK (int,int ) ;
 int SYNC_DEFP_SLOW ;

__attribute__((used)) static void esp_set_clock_params(struct esp *esp)
{
 int fhz;
 u8 ccf;
 fhz = esp->cfreq;

 ccf = ((fhz / 1000000) + 4) / 5;
 if (ccf == 1)
  ccf = 2;






 if (fhz <= 5000000 || ccf < 1 || ccf > 8) {
  fhz = 20000000;
  ccf = 4;
 }

 esp->cfact = (ccf == 8 ? 0 : ccf);
 esp->cfreq = fhz;
 esp->ccycle = ESP_HZ_TO_CYCLE(fhz);
 esp->ctick = ESP_TICK(ccf, esp->ccycle);
 esp->neg_defp = ESP_NEG_DEFP(fhz, ccf);
 esp->sync_defp = SYNC_DEFP_SLOW;
}
