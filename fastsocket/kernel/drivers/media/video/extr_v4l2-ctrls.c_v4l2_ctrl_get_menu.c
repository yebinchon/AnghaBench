
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
const char * const *v4l2_ctrl_get_menu(u32 id)
{
 static const char * const mpeg_audio_sampling_freq[] = {
  "44.1 kHz",
  "48 kHz",
  "32 kHz",
  ((void*)0)
 };
 static const char * const mpeg_audio_encoding[] = {
  "MPEG-1/2 Layer I",
  "MPEG-1/2 Layer II",
  "MPEG-1/2 Layer III",
  "MPEG-2/4 AAC",
  "AC-3",
  ((void*)0)
 };
 static const char * const mpeg_audio_l1_bitrate[] = {
  "32 kbps",
  "64 kbps",
  "96 kbps",
  "128 kbps",
  "160 kbps",
  "192 kbps",
  "224 kbps",
  "256 kbps",
  "288 kbps",
  "320 kbps",
  "352 kbps",
  "384 kbps",
  "416 kbps",
  "448 kbps",
  ((void*)0)
 };
 static const char * const mpeg_audio_l2_bitrate[] = {
  "32 kbps",
  "48 kbps",
  "56 kbps",
  "64 kbps",
  "80 kbps",
  "96 kbps",
  "112 kbps",
  "128 kbps",
  "160 kbps",
  "192 kbps",
  "224 kbps",
  "256 kbps",
  "320 kbps",
  "384 kbps",
  ((void*)0)
 };
 static const char * const mpeg_audio_l3_bitrate[] = {
  "32 kbps",
  "40 kbps",
  "48 kbps",
  "56 kbps",
  "64 kbps",
  "80 kbps",
  "96 kbps",
  "112 kbps",
  "128 kbps",
  "160 kbps",
  "192 kbps",
  "224 kbps",
  "256 kbps",
  "320 kbps",
  ((void*)0)
 };
 static const char * const mpeg_audio_ac3_bitrate[] = {
  "32 kbps",
  "40 kbps",
  "48 kbps",
  "56 kbps",
  "64 kbps",
  "80 kbps",
  "96 kbps",
  "112 kbps",
  "128 kbps",
  "160 kbps",
  "192 kbps",
  "224 kbps",
  "256 kbps",
  "320 kbps",
  "384 kbps",
  "448 kbps",
  "512 kbps",
  "576 kbps",
  "640 kbps",
  ((void*)0)
 };
 static const char * const mpeg_audio_mode[] = {
  "Stereo",
  "Joint Stereo",
  "Dual",
  "Mono",
  ((void*)0)
 };
 static const char * const mpeg_audio_mode_extension[] = {
  "Bound 4",
  "Bound 8",
  "Bound 12",
  "Bound 16",
  ((void*)0)
 };
 static const char * const mpeg_audio_emphasis[] = {
  "No Emphasis",
  "50/15 us",
  "CCITT J17",
  ((void*)0)
 };
 static const char * const mpeg_audio_crc[] = {
  "No CRC",
  "16-bit CRC",
  ((void*)0)
 };
 static const char * const mpeg_video_encoding[] = {
  "MPEG-1",
  "MPEG-2",
  "MPEG-4 AVC",
  ((void*)0)
 };
 static const char * const mpeg_video_aspect[] = {
  "1x1",
  "4x3",
  "16x9",
  "2.21x1",
  ((void*)0)
 };
 static const char * const mpeg_video_bitrate_mode[] = {
  "Variable Bitrate",
  "Constant Bitrate",
  ((void*)0)
 };
 static const char * const mpeg_stream_type[] = {
  "MPEG-2 Program Stream",
  "MPEG-2 Transport Stream",
  "MPEG-1 System Stream",
  "MPEG-2 DVD-compatible Stream",
  "MPEG-1 VCD-compatible Stream",
  "MPEG-2 SVCD-compatible Stream",
  ((void*)0)
 };
 static const char * const mpeg_stream_vbi_fmt[] = {
  "No VBI",
  "Private packet, IVTV format",
  ((void*)0)
 };
 static const char * const camera_power_line_frequency[] = {
  "Disabled",
  "50 Hz",
  "60 Hz",
  ((void*)0)
 };
 static const char * const camera_exposure_auto[] = {
  "Auto Mode",
  "Manual Mode",
  "Shutter Priority Mode",
  "Aperture Priority Mode",
  ((void*)0)
 };
 static const char * const colorfx[] = {
  "None",
  "Black & White",
  "Sepia",
  "Negative",
  "Emboss",
  "Sketch",
  "Sky blue",
  "Grass green",
  "Skin whiten",
  "Vivid",
  ((void*)0)
 };
 static const char * const tune_preemphasis[] = {
  "No preemphasis",
  "50 useconds",
  "75 useconds",
  ((void*)0),
 };

 switch (id) {
 case 135:
  return mpeg_audio_sampling_freq;
 case 141:
  return mpeg_audio_encoding;
 case 140:
  return mpeg_audio_l1_bitrate;
 case 139:
  return mpeg_audio_l2_bitrate;
 case 138:
  return mpeg_audio_l3_bitrate;
 case 144:
  return mpeg_audio_ac3_bitrate;
 case 137:
  return mpeg_audio_mode;
 case 136:
  return mpeg_audio_mode_extension;
 case 142:
  return mpeg_audio_emphasis;
 case 143:
  return mpeg_audio_crc;
 case 130:
  return mpeg_video_encoding;
 case 132:
  return mpeg_video_aspect;
 case 131:
  return mpeg_video_bitrate_mode;
 case 134:
  return mpeg_stream_type;
 case 133:
  return mpeg_stream_vbi_fmt;
 case 129:
  return camera_power_line_frequency;
 case 145:
  return camera_exposure_auto;
 case 146:
  return colorfx;
 case 128:
  return tune_preemphasis;
 default:
  return ((void*)0);
 }
}
