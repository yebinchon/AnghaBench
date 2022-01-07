
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int const TUNER_SIGNAL ;
 int const TUNER_STEREO ;
 int const TUNER_STEREO_MK3 ;


__attribute__((used)) static inline int tuner_stereo(const int type, const int status)
{
 switch (type) {
 case 132:
 case 130:
 case 129:
 case 133:
 case 128:
  return ((status & TUNER_SIGNAL) == TUNER_STEREO_MK3);
 case 131:
  return status | TUNER_STEREO;
 default:
  return status & TUNER_STEREO;
 }
}
