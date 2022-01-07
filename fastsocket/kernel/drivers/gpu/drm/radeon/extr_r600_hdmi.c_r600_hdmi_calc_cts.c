
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int DRM_DEBUG (char*,int,int,int) ;

__attribute__((used)) static void r600_hdmi_calc_cts(uint32_t clock, int *CTS, int N, int freq)
{
 if (*CTS == 0)
  *CTS = clock * N / (128 * freq) * 1000;
 DRM_DEBUG("Using ACR timing N=%d CTS=%d for frequency %d\n",
    N, *CTS, freq);
}
