
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fft_sample_tlv {int length; } ;
struct ath_softc {int rfs_chan_spec_scan; } ;


 int __be16_to_cpu (int ) ;
 int relay_write (int ,struct fft_sample_tlv*,int) ;

void ath_debug_send_fft_sample(struct ath_softc *sc,
          struct fft_sample_tlv *fft_sample_tlv)
{
 int length;
 if (!sc->rfs_chan_spec_scan)
  return;

 length = __be16_to_cpu(fft_sample_tlv->length) +
   sizeof(*fft_sample_tlv);
 relay_write(sc->rfs_chan_spec_scan, fft_sample_tlv, length);
}
