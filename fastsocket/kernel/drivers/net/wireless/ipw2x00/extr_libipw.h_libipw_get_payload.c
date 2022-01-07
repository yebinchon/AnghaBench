
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct libipw_hdr_4addr {int * payload; } ;
struct libipw_hdr_3addr {int * payload; } ;
struct libipw_hdr_2addr {int * payload; } ;
struct libipw_hdr_1addr {int * payload; } ;
struct ieee80211_hdr {int frame_control; } ;






 int le16_to_cpu (int ) ;
 int libipw_get_hdrlen (int ) ;

__attribute__((used)) static inline u8 *libipw_get_payload(struct ieee80211_hdr *hdr)
{
 switch (libipw_get_hdrlen(le16_to_cpu(hdr->frame_control))) {
 case 131:
  return ((struct libipw_hdr_1addr *)hdr)->payload;
 case 130:
  return ((struct libipw_hdr_2addr *)hdr)->payload;
 case 129:
  return ((struct libipw_hdr_3addr *)hdr)->payload;
 case 128:
  return ((struct libipw_hdr_4addr *)hdr)->payload;
 }
 return ((void*)0);
}
