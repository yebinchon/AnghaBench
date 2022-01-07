
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isdn_audio_alaw_to_ulaw ;
 int isdn_audio_tlookup (int ,unsigned char*,unsigned long) ;

void
isdn_audio_alaw2ulaw(unsigned char *buff, unsigned long len)
{
 isdn_audio_tlookup(isdn_audio_alaw_to_ulaw, buff, len);
}
