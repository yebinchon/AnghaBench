
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
const char *v4l2_ctrl_get_name(u32 id)
{
 switch (id) {


 case 134: return "User Controls";
 case 216: return "Brightness";
 case 210: return "Contrast";
 case 142: return "Saturation";
 case 196: return "Hue";
 case 225: return "Volume";
 case 238: return "Balance";
 case 237: return "Bass";
 case 226: return "Treble";
 case 227: return "Mute";
 case 228: return "Loudness";
 case 218: return "Black Level";
 case 222: return "White Balance, Automatic";
 case 209: return "Do White Balance";
 case 144: return "Red Balance";
 case 217: return "Blue Balance";
 case 199: return "Gamma";
 case 208: return "Exposure";
 case 223: return "Gain, Automatic";
 case 200: return "Gain";
 case 197: return "Horizontal Flip";
 case 132: return "Vertical Flip";
 case 198: return "Horizontal Center";
 case 133: return "Vertical Center";
 case 151: return "Power Line Frequency";
 case 195: return "Hue, Automatic";
 case 131: return "White Balance Temperature";
 case 141: return "Sharpness";
 case 221: return "Backlight Compensation";
 case 214: return "Chroma AGC";
 case 211: return "Color Killer";
 case 212: return "Color Effects";
 case 224: return "Brightness, Automatic";
 case 220: return "Band-Stop Filter";
 case 143: return "Rotate";
 case 219: return "Background Color";
 case 213: return "Chroma Gain";
 case 194: return "Illuminator 1";
 case 193: return "Illuminator 2";



 case 178: return "MPEG Encoder Controls";
 case 171: return "Stream Type";
 case 173: return "Stream PMT Program ID";
 case 175: return "Stream Audio Program ID";
 case 172: return "Stream Video Program ID";
 case 174: return "Stream PCR Program ID";
 case 177: return "Stream PES Audio ID";
 case 176: return "Stream PES Video ID";
 case 170: return "Stream VBI Format";
 case 179: return "Audio Sampling Frequency";
 case 186: return "Audio Encoding";
 case 185: return "Audio Layer I Bitrate";
 case 184: return "Audio Layer II Bitrate";
 case 183: return "Audio Layer III Bitrate";
 case 182: return "Audio Stereo Mode";
 case 181: return "Audio Stereo Mode Extension";
 case 187: return "Audio Emphasis";
 case 188: return "Audio CRC";
 case 180: return "Audio Mute";
 case 190: return "Audio AAC Bitrate";
 case 189: return "Audio AC-3 Bitrate";
 case 164: return "Video Encoding";
 case 169: return "Video Aspect";
 case 165: return "Video B Frames";
 case 162: return "Video GOP Size";
 case 163: return "Video GOP Closure";
 case 159: return "Video Pulldown";
 case 167: return "Video Bitrate Mode";
 case 168: return "Video Bitrate";
 case 166: return "Video Peak Bitrate";
 case 158: return "Video Temporal Decimation";
 case 161: return "Video Mute";
 case 160: return "Video Mute YUV";



 case 215: return "Camera Controls";
 case 206: return "Auto Exposure";
 case 207: return "Exposure Time, Absolute";
 case 205: return "Exposure, Dynamic Framerate";
 case 156: return "Pan, Relative";
 case 139: return "Tilt, Relative";
 case 155: return "Pan, Reset";
 case 138: return "Tilt, Reset";
 case 157: return "Pan, Absolute";
 case 140: return "Tilt, Absolute";
 case 203: return "Focus, Absolute";
 case 201: return "Focus, Relative";
 case 202: return "Focus, Automatic";
 case 130: return "Zoom, Absolute";
 case 128: return "Zoom, Relative";
 case 129: return "Zoom, Continuous";
 case 150: return "Privacy";
 case 192: return "Iris, Absolute";
 case 191: return "Iris, Relative";



 case 204: return "FM Radio Modulator Controls";
 case 149: return "RDS Signal Deviation";
 case 148: return "RDS Program ID";
 case 146: return "RDS Program Type";
 case 147: return "RDS PS Name";
 case 145: return "RDS Radio Text";
 case 230: return "Audio Limiter Feature Enabled";
 case 229: return "Audio Limiter Release Time";
 case 231: return "Audio Limiter Deviation";
 case 235: return "Audio Compression Feature Enabled";
 case 234: return "Audio Compression Gain";
 case 232: return "Audio Compression Threshold";
 case 236: return "Audio Compression Attack Time";
 case 233: return "Audio Compression Release Time";
 case 153: return "Pilot Tone Feature Enabled";
 case 154: return "Pilot Tone Deviation";
 case 152: return "Pilot Tone Frequency";
 case 135: return "Pre-emphasis settings";
 case 136: return "Tune Power Level";
 case 137: return "Tune Antenna Capacitor";

 default:
  return ((void*)0);
 }
}
