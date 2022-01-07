; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_ibmcam.c_ibmcam_model1_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_ibmcam.c_ibmcam_model1_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvd = type { i32 }

@light_27 = common dso_local global i32 0, align 4
@contrast_14 = common dso_local global i32 0, align 4
@sharp_13 = common dso_local global i32 0, align 4
@lighting = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvd*)* @ibmcam_model1_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmcam_model1_setup(%struct.uvd* %0) #0 {
  %2 = alloca %struct.uvd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.uvd* %0, %struct.uvd** %2, align 8
  store i32 5, i32* %3, align 4
  %5 = load %struct.uvd*, %struct.uvd** %2, align 8
  %6 = call i32 @ibmcam_veio(%struct.uvd* %5, i32 1, i32 0, i32 296)
  %7 = load %struct.uvd*, %struct.uvd** %2, align 8
  %8 = call i32 @ibmcam_veio(%struct.uvd* %7, i32 1, i32 0, i32 256)
  %9 = load %struct.uvd*, %struct.uvd** %2, align 8
  %10 = call i32 @ibmcam_veio(%struct.uvd* %9, i32 0, i32 1, i32 256)
  %11 = load %struct.uvd*, %struct.uvd** %2, align 8
  %12 = call i32 @ibmcam_veio(%struct.uvd* %11, i32 1, i32 0, i32 256)
  %13 = load %struct.uvd*, %struct.uvd** %2, align 8
  %14 = call i32 @ibmcam_veio(%struct.uvd* %13, i32 0, i32 129, i32 256)
  %15 = load %struct.uvd*, %struct.uvd** %2, align 8
  %16 = call i32 @ibmcam_veio(%struct.uvd* %15, i32 1, i32 0, i32 256)
  %17 = load %struct.uvd*, %struct.uvd** %2, align 8
  %18 = call i32 @ibmcam_veio(%struct.uvd* %17, i32 0, i32 1, i32 256)
  %19 = load %struct.uvd*, %struct.uvd** %2, align 8
  %20 = call i32 @ibmcam_veio(%struct.uvd* %19, i32 0, i32 1, i32 264)
  %21 = load %struct.uvd*, %struct.uvd** %2, align 8
  %22 = call i32 @ibmcam_veio(%struct.uvd* %21, i32 0, i32 3, i32 274)
  %23 = load %struct.uvd*, %struct.uvd** %2, align 8
  %24 = call i32 @ibmcam_veio(%struct.uvd* %23, i32 1, i32 0, i32 277)
  %25 = load %struct.uvd*, %struct.uvd** %2, align 8
  %26 = call i32 @ibmcam_veio(%struct.uvd* %25, i32 0, i32 6, i32 277)
  %27 = load %struct.uvd*, %struct.uvd** %2, align 8
  %28 = call i32 @ibmcam_veio(%struct.uvd* %27, i32 1, i32 0, i32 278)
  %29 = load %struct.uvd*, %struct.uvd** %2, align 8
  %30 = call i32 @ibmcam_veio(%struct.uvd* %29, i32 0, i32 68, i32 278)
  %31 = load %struct.uvd*, %struct.uvd** %2, align 8
  %32 = call i32 @ibmcam_veio(%struct.uvd* %31, i32 1, i32 0, i32 278)
  %33 = load %struct.uvd*, %struct.uvd** %2, align 8
  %34 = call i32 @ibmcam_veio(%struct.uvd* %33, i32 0, i32 64, i32 278)
  %35 = load %struct.uvd*, %struct.uvd** %2, align 8
  %36 = call i32 @ibmcam_veio(%struct.uvd* %35, i32 1, i32 0, i32 277)
  %37 = load %struct.uvd*, %struct.uvd** %2, align 8
  %38 = call i32 @ibmcam_veio(%struct.uvd* %37, i32 0, i32 14, i32 277)
  %39 = load %struct.uvd*, %struct.uvd** %2, align 8
  %40 = call i32 @ibmcam_veio(%struct.uvd* %39, i32 0, i32 25, i32 300)
  %41 = load %struct.uvd*, %struct.uvd** %2, align 8
  %42 = call i32 @ibmcam_Packet_Format1(%struct.uvd* %41, i32 0, i32 30)
  %43 = load %struct.uvd*, %struct.uvd** %2, align 8
  %44 = call i32 @ibmcam_Packet_Format1(%struct.uvd* %43, i32 57, i32 13)
  %45 = load %struct.uvd*, %struct.uvd** %2, align 8
  %46 = call i32 @ibmcam_Packet_Format1(%struct.uvd* %45, i32 57, i32 9)
  %47 = load %struct.uvd*, %struct.uvd** %2, align 8
  %48 = call i32 @ibmcam_Packet_Format1(%struct.uvd* %47, i32 59, i32 0)
  %49 = load %struct.uvd*, %struct.uvd** %2, align 8
  %50 = call i32 @ibmcam_Packet_Format1(%struct.uvd* %49, i32 40, i32 34)
  %51 = load %struct.uvd*, %struct.uvd** %2, align 8
  %52 = load i32, i32* @light_27, align 4
  %53 = call i32 @ibmcam_Packet_Format1(%struct.uvd* %51, i32 %52, i32 0)
  %54 = load %struct.uvd*, %struct.uvd** %2, align 8
  %55 = call i32 @ibmcam_Packet_Format1(%struct.uvd* %54, i32 43, i32 31)
  %56 = load %struct.uvd*, %struct.uvd** %2, align 8
  %57 = call i32 @ibmcam_Packet_Format1(%struct.uvd* %56, i32 57, i32 8)
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %64, %1
  %59 = load i32, i32* %4, align 4
  %60 = icmp slt i32 %59, 5
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = load %struct.uvd*, %struct.uvd** %2, align 8
  %63 = call i32 @ibmcam_Packet_Format1(%struct.uvd* %62, i32 44, i32 0)
  br label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %4, align 4
  br label %58

67:                                               ; preds = %58
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %74, %67
  %69 = load i32, i32* %4, align 4
  %70 = icmp slt i32 %69, 5
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = load %struct.uvd*, %struct.uvd** %2, align 8
  %73 = call i32 @ibmcam_Packet_Format1(%struct.uvd* %72, i32 48, i32 20)
  br label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %4, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %4, align 4
  br label %68

77:                                               ; preds = %68
  %78 = load %struct.uvd*, %struct.uvd** %2, align 8
  %79 = call i32 @ibmcam_PacketFormat2(%struct.uvd* %78, i32 57, i32 2)
  %80 = load %struct.uvd*, %struct.uvd** %2, align 8
  %81 = call i32 @ibmcam_PacketFormat2(%struct.uvd* %80, i32 1, i32 225)
  %82 = load %struct.uvd*, %struct.uvd** %2, align 8
  %83 = call i32 @ibmcam_PacketFormat2(%struct.uvd* %82, i32 2, i32 205)
  %84 = load %struct.uvd*, %struct.uvd** %2, align 8
  %85 = call i32 @ibmcam_PacketFormat2(%struct.uvd* %84, i32 3, i32 205)
  %86 = load %struct.uvd*, %struct.uvd** %2, align 8
  %87 = call i32 @ibmcam_PacketFormat2(%struct.uvd* %86, i32 4, i32 250)
  %88 = load %struct.uvd*, %struct.uvd** %2, align 8
  %89 = call i32 @ibmcam_PacketFormat2(%struct.uvd* %88, i32 63, i32 255)
  %90 = load %struct.uvd*, %struct.uvd** %2, align 8
  %91 = call i32 @ibmcam_PacketFormat2(%struct.uvd* %90, i32 57, i32 0)
  %92 = load %struct.uvd*, %struct.uvd** %2, align 8
  %93 = call i32 @ibmcam_PacketFormat2(%struct.uvd* %92, i32 57, i32 2)
  %94 = load %struct.uvd*, %struct.uvd** %2, align 8
  %95 = call i32 @ibmcam_PacketFormat2(%struct.uvd* %94, i32 10, i32 55)
  %96 = load %struct.uvd*, %struct.uvd** %2, align 8
  %97 = call i32 @ibmcam_PacketFormat2(%struct.uvd* %96, i32 11, i32 184)
  %98 = load %struct.uvd*, %struct.uvd** %2, align 8
  %99 = call i32 @ibmcam_PacketFormat2(%struct.uvd* %98, i32 12, i32 243)
  %100 = load %struct.uvd*, %struct.uvd** %2, align 8
  %101 = call i32 @ibmcam_PacketFormat2(%struct.uvd* %100, i32 13, i32 227)
  %102 = load %struct.uvd*, %struct.uvd** %2, align 8
  %103 = call i32 @ibmcam_PacketFormat2(%struct.uvd* %102, i32 14, i32 13)
  %104 = load %struct.uvd*, %struct.uvd** %2, align 8
  %105 = call i32 @ibmcam_PacketFormat2(%struct.uvd* %104, i32 15, i32 242)
  %106 = load %struct.uvd*, %struct.uvd** %2, align 8
  %107 = call i32 @ibmcam_PacketFormat2(%struct.uvd* %106, i32 16, i32 213)
  %108 = load %struct.uvd*, %struct.uvd** %2, align 8
  %109 = call i32 @ibmcam_PacketFormat2(%struct.uvd* %108, i32 17, i32 186)
  %110 = load %struct.uvd*, %struct.uvd** %2, align 8
  %111 = call i32 @ibmcam_PacketFormat2(%struct.uvd* %110, i32 18, i32 83)
  %112 = load %struct.uvd*, %struct.uvd** %2, align 8
  %113 = call i32 @ibmcam_PacketFormat2(%struct.uvd* %112, i32 63, i32 255)
  %114 = load %struct.uvd*, %struct.uvd** %2, align 8
  %115 = call i32 @ibmcam_PacketFormat2(%struct.uvd* %114, i32 57, i32 0)
  %116 = load %struct.uvd*, %struct.uvd** %2, align 8
  %117 = call i32 @ibmcam_PacketFormat2(%struct.uvd* %116, i32 57, i32 2)
  %118 = load %struct.uvd*, %struct.uvd** %2, align 8
  %119 = call i32 @ibmcam_PacketFormat2(%struct.uvd* %118, i32 22, i32 0)
  %120 = load %struct.uvd*, %struct.uvd** %2, align 8
  %121 = call i32 @ibmcam_PacketFormat2(%struct.uvd* %120, i32 23, i32 40)
  %122 = load %struct.uvd*, %struct.uvd** %2, align 8
  %123 = call i32 @ibmcam_PacketFormat2(%struct.uvd* %122, i32 24, i32 125)
  %124 = load %struct.uvd*, %struct.uvd** %2, align 8
  %125 = call i32 @ibmcam_PacketFormat2(%struct.uvd* %124, i32 25, i32 190)
  %126 = load %struct.uvd*, %struct.uvd** %2, align 8
  %127 = call i32 @ibmcam_PacketFormat2(%struct.uvd* %126, i32 63, i32 255)
  %128 = load %struct.uvd*, %struct.uvd** %2, align 8
  %129 = call i32 @ibmcam_PacketFormat2(%struct.uvd* %128, i32 57, i32 0)
  store i32 0, i32* %4, align 4
  br label %130

130:                                              ; preds = %136, %77
  %131 = load i32, i32* %4, align 4
  %132 = icmp slt i32 %131, 5
  br i1 %132, label %133, label %139

133:                                              ; preds = %130
  %134 = load %struct.uvd*, %struct.uvd** %2, align 8
  %135 = call i32 @ibmcam_Packet_Format1(%struct.uvd* %134, i32 0, i32 24)
  br label %136

136:                                              ; preds = %133
  %137 = load i32, i32* %4, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %4, align 4
  br label %130

139:                                              ; preds = %130
  store i32 0, i32* %4, align 4
  br label %140

140:                                              ; preds = %146, %139
  %141 = load i32, i32* %4, align 4
  %142 = icmp slt i32 %141, 5
  br i1 %142, label %143, label %149

143:                                              ; preds = %140
  %144 = load %struct.uvd*, %struct.uvd** %2, align 8
  %145 = call i32 @ibmcam_Packet_Format1(%struct.uvd* %144, i32 19, i32 24)
  br label %146

146:                                              ; preds = %143
  %147 = load i32, i32* %4, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %4, align 4
  br label %140

149:                                              ; preds = %140
  store i32 0, i32* %4, align 4
  br label %150

150:                                              ; preds = %156, %149
  %151 = load i32, i32* %4, align 4
  %152 = icmp slt i32 %151, 5
  br i1 %152, label %153, label %159

153:                                              ; preds = %150
  %154 = load %struct.uvd*, %struct.uvd** %2, align 8
  %155 = call i32 @ibmcam_Packet_Format1(%struct.uvd* %154, i32 20, i32 6)
  br label %156

156:                                              ; preds = %153
  %157 = load i32, i32* %4, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %4, align 4
  br label %150

159:                                              ; preds = %150
  store i32 0, i32* %4, align 4
  br label %160

160:                                              ; preds = %166, %159
  %161 = load i32, i32* %4, align 4
  %162 = icmp slt i32 %161, 5
  br i1 %162, label %163, label %169

163:                                              ; preds = %160
  %164 = load %struct.uvd*, %struct.uvd** %2, align 8
  %165 = call i32 @ibmcam_Packet_Format1(%struct.uvd* %164, i32 49, i32 55)
  br label %166

166:                                              ; preds = %163
  %167 = load i32, i32* %4, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %4, align 4
  br label %160

169:                                              ; preds = %160
  store i32 0, i32* %4, align 4
  br label %170

170:                                              ; preds = %176, %169
  %171 = load i32, i32* %4, align 4
  %172 = icmp slt i32 %171, 5
  br i1 %172, label %173, label %179

173:                                              ; preds = %170
  %174 = load %struct.uvd*, %struct.uvd** %2, align 8
  %175 = call i32 @ibmcam_Packet_Format1(%struct.uvd* %174, i32 50, i32 70)
  br label %176

176:                                              ; preds = %173
  %177 = load i32, i32* %4, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %4, align 4
  br label %170

179:                                              ; preds = %170
  store i32 0, i32* %4, align 4
  br label %180

180:                                              ; preds = %186, %179
  %181 = load i32, i32* %4, align 4
  %182 = icmp slt i32 %181, 5
  br i1 %182, label %183, label %189

183:                                              ; preds = %180
  %184 = load %struct.uvd*, %struct.uvd** %2, align 8
  %185 = call i32 @ibmcam_Packet_Format1(%struct.uvd* %184, i32 51, i32 85)
  br label %186

186:                                              ; preds = %183
  %187 = load i32, i32* %4, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %4, align 4
  br label %180

189:                                              ; preds = %180
  %190 = load %struct.uvd*, %struct.uvd** %2, align 8
  %191 = call i32 @ibmcam_Packet_Format1(%struct.uvd* %190, i32 46, i32 4)
  store i32 0, i32* %4, align 4
  br label %192

192:                                              ; preds = %198, %189
  %193 = load i32, i32* %4, align 4
  %194 = icmp slt i32 %193, 5
  br i1 %194, label %195, label %201

195:                                              ; preds = %192
  %196 = load %struct.uvd*, %struct.uvd** %2, align 8
  %197 = call i32 @ibmcam_Packet_Format1(%struct.uvd* %196, i32 45, i32 4)
  br label %198

198:                                              ; preds = %195
  %199 = load i32, i32* %4, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %4, align 4
  br label %192

201:                                              ; preds = %192
  store i32 0, i32* %4, align 4
  br label %202

202:                                              ; preds = %208, %201
  %203 = load i32, i32* %4, align 4
  %204 = icmp slt i32 %203, 5
  br i1 %204, label %205, label %211

205:                                              ; preds = %202
  %206 = load %struct.uvd*, %struct.uvd** %2, align 8
  %207 = call i32 @ibmcam_Packet_Format1(%struct.uvd* %206, i32 41, i32 128)
  br label %208

208:                                              ; preds = %205
  %209 = load i32, i32* %4, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %4, align 4
  br label %202

211:                                              ; preds = %202
  %212 = load %struct.uvd*, %struct.uvd** %2, align 8
  %213 = call i32 @ibmcam_Packet_Format1(%struct.uvd* %212, i32 44, i32 1)
  %214 = load %struct.uvd*, %struct.uvd** %2, align 8
  %215 = call i32 @ibmcam_Packet_Format1(%struct.uvd* %214, i32 48, i32 23)
  %216 = load %struct.uvd*, %struct.uvd** %2, align 8
  %217 = call i32 @ibmcam_Packet_Format1(%struct.uvd* %216, i32 57, i32 8)
  store i32 0, i32* %4, align 4
  br label %218

218:                                              ; preds = %224, %211
  %219 = load i32, i32* %4, align 4
  %220 = icmp slt i32 %219, 5
  br i1 %220, label %221, label %227

221:                                              ; preds = %218
  %222 = load %struct.uvd*, %struct.uvd** %2, align 8
  %223 = call i32 @ibmcam_Packet_Format1(%struct.uvd* %222, i32 52, i32 0)
  br label %224

224:                                              ; preds = %221
  %225 = load i32, i32* %4, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %4, align 4
  br label %218

227:                                              ; preds = %218
  %228 = load %struct.uvd*, %struct.uvd** %2, align 8
  %229 = call i32 @ibmcam_veio(%struct.uvd* %228, i32 0, i32 0, i32 257)
  %230 = load %struct.uvd*, %struct.uvd** %2, align 8
  %231 = call i32 @ibmcam_veio(%struct.uvd* %230, i32 0, i32 0, i32 266)
  %232 = load %struct.uvd*, %struct.uvd** %2, align 8
  %233 = getelementptr inbounds %struct.uvd, %struct.uvd* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  switch i32 %234, label %280 [
    i32 130, label %235
    i32 129, label %250
    i32 128, label %265
  ]

235:                                              ; preds = %227
  %236 = load %struct.uvd*, %struct.uvd** %2, align 8
  %237 = call i32 @ibmcam_veio(%struct.uvd* %236, i32 0, i32 128, i32 259)
  %238 = load %struct.uvd*, %struct.uvd** %2, align 8
  %239 = call i32 @ibmcam_veio(%struct.uvd* %238, i32 0, i32 96, i32 261)
  %240 = load %struct.uvd*, %struct.uvd** %2, align 8
  %241 = call i32 @ibmcam_veio(%struct.uvd* %240, i32 0, i32 12, i32 267)
  %242 = load %struct.uvd*, %struct.uvd** %2, align 8
  %243 = call i32 @ibmcam_veio(%struct.uvd* %242, i32 0, i32 4, i32 283)
  %244 = load %struct.uvd*, %struct.uvd** %2, align 8
  %245 = call i32 @ibmcam_veio(%struct.uvd* %244, i32 0, i32 11, i32 285)
  %246 = load %struct.uvd*, %struct.uvd** %2, align 8
  %247 = call i32 @ibmcam_veio(%struct.uvd* %246, i32 0, i32 0, i32 286)
  %248 = load %struct.uvd*, %struct.uvd** %2, align 8
  %249 = call i32 @ibmcam_veio(%struct.uvd* %248, i32 0, i32 0, i32 297)
  br label %280

250:                                              ; preds = %227
  %251 = load %struct.uvd*, %struct.uvd** %2, align 8
  %252 = call i32 @ibmcam_veio(%struct.uvd* %251, i32 0, i32 176, i32 259)
  %253 = load %struct.uvd*, %struct.uvd** %2, align 8
  %254 = call i32 @ibmcam_veio(%struct.uvd* %253, i32 0, i32 143, i32 261)
  %255 = load %struct.uvd*, %struct.uvd** %2, align 8
  %256 = call i32 @ibmcam_veio(%struct.uvd* %255, i32 0, i32 6, i32 267)
  %257 = load %struct.uvd*, %struct.uvd** %2, align 8
  %258 = call i32 @ibmcam_veio(%struct.uvd* %257, i32 0, i32 4, i32 283)
  %259 = load %struct.uvd*, %struct.uvd** %2, align 8
  %260 = call i32 @ibmcam_veio(%struct.uvd* %259, i32 0, i32 13, i32 285)
  %261 = load %struct.uvd*, %struct.uvd** %2, align 8
  %262 = call i32 @ibmcam_veio(%struct.uvd* %261, i32 0, i32 0, i32 286)
  %263 = load %struct.uvd*, %struct.uvd** %2, align 8
  %264 = call i32 @ibmcam_veio(%struct.uvd* %263, i32 0, i32 3, i32 297)
  br label %280

265:                                              ; preds = %227
  %266 = load %struct.uvd*, %struct.uvd** %2, align 8
  %267 = call i32 @ibmcam_veio(%struct.uvd* %266, i32 0, i32 176, i32 259)
  %268 = load %struct.uvd*, %struct.uvd** %2, align 8
  %269 = call i32 @ibmcam_veio(%struct.uvd* %268, i32 0, i32 144, i32 261)
  %270 = load %struct.uvd*, %struct.uvd** %2, align 8
  %271 = call i32 @ibmcam_veio(%struct.uvd* %270, i32 0, i32 2, i32 267)
  %272 = load %struct.uvd*, %struct.uvd** %2, align 8
  %273 = call i32 @ibmcam_veio(%struct.uvd* %272, i32 0, i32 4, i32 283)
  %274 = load %struct.uvd*, %struct.uvd** %2, align 8
  %275 = call i32 @ibmcam_veio(%struct.uvd* %274, i32 0, i32 5, i32 285)
  %276 = load %struct.uvd*, %struct.uvd** %2, align 8
  %277 = call i32 @ibmcam_veio(%struct.uvd* %276, i32 0, i32 0, i32 286)
  %278 = load %struct.uvd*, %struct.uvd** %2, align 8
  %279 = call i32 @ibmcam_veio(%struct.uvd* %278, i32 0, i32 0, i32 297)
  br label %280

280:                                              ; preds = %227, %265, %250, %235
  %281 = load %struct.uvd*, %struct.uvd** %2, align 8
  %282 = call i32 @ibmcam_veio(%struct.uvd* %281, i32 0, i32 255, i32 299)
  store i32 0, i32* %4, align 4
  br label %283

283:                                              ; preds = %289, %280
  %284 = load i32, i32* %4, align 4
  %285 = icmp slt i32 %284, 5
  br i1 %285, label %286, label %292

286:                                              ; preds = %283
  %287 = load %struct.uvd*, %struct.uvd** %2, align 8
  %288 = call i32 @ibmcam_Packet_Format1(%struct.uvd* %287, i32 49, i32 195)
  br label %289

289:                                              ; preds = %286
  %290 = load i32, i32* %4, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %4, align 4
  br label %283

292:                                              ; preds = %283
  store i32 0, i32* %4, align 4
  br label %293

293:                                              ; preds = %299, %292
  %294 = load i32, i32* %4, align 4
  %295 = icmp slt i32 %294, 5
  br i1 %295, label %296, label %302

296:                                              ; preds = %293
  %297 = load %struct.uvd*, %struct.uvd** %2, align 8
  %298 = call i32 @ibmcam_Packet_Format1(%struct.uvd* %297, i32 50, i32 210)
  br label %299

299:                                              ; preds = %296
  %300 = load i32, i32* %4, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %4, align 4
  br label %293

302:                                              ; preds = %293
  store i32 0, i32* %4, align 4
  br label %303

303:                                              ; preds = %309, %302
  %304 = load i32, i32* %4, align 4
  %305 = icmp slt i32 %304, 5
  br i1 %305, label %306, label %312

306:                                              ; preds = %303
  %307 = load %struct.uvd*, %struct.uvd** %2, align 8
  %308 = call i32 @ibmcam_Packet_Format1(%struct.uvd* %307, i32 51, i32 225)
  br label %309

309:                                              ; preds = %306
  %310 = load i32, i32* %4, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %4, align 4
  br label %303

312:                                              ; preds = %303
  store i32 0, i32* %4, align 4
  br label %313

313:                                              ; preds = %320, %312
  %314 = load i32, i32* %4, align 4
  %315 = icmp slt i32 %314, 5
  br i1 %315, label %316, label %323

316:                                              ; preds = %313
  %317 = load %struct.uvd*, %struct.uvd** %2, align 8
  %318 = load i32, i32* @contrast_14, align 4
  %319 = call i32 @ibmcam_Packet_Format1(%struct.uvd* %317, i32 %318, i32 10)
  br label %320

320:                                              ; preds = %316
  %321 = load i32, i32* %4, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %4, align 4
  br label %313

323:                                              ; preds = %313
  store i32 0, i32* %4, align 4
  br label %324

324:                                              ; preds = %331, %323
  %325 = load i32, i32* %4, align 4
  %326 = icmp slt i32 %325, 2
  br i1 %326, label %327, label %334

327:                                              ; preds = %324
  %328 = load %struct.uvd*, %struct.uvd** %2, align 8
  %329 = load i32, i32* @sharp_13, align 4
  %330 = call i32 @ibmcam_PacketFormat2(%struct.uvd* %328, i32 %329, i32 26)
  br label %331

331:                                              ; preds = %327
  %332 = load i32, i32* %4, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %4, align 4
  br label %324

334:                                              ; preds = %324
  %335 = load %struct.uvd*, %struct.uvd** %2, align 8
  %336 = load i32, i32* @light_27, align 4
  %337 = load i32, i32* @lighting, align 4
  %338 = call i32 @ibmcam_Packet_Format1(%struct.uvd* %335, i32 %336, i32 %337)
  %339 = load %struct.uvd*, %struct.uvd** %2, align 8
  %340 = getelementptr inbounds %struct.uvd, %struct.uvd* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 4
  switch i32 %341, label %405 [
    i32 130, label %342
    i32 129, label %363
    i32 128, label %384
  ]

342:                                              ; preds = %334
  %343 = load %struct.uvd*, %struct.uvd** %2, align 8
  %344 = call i32 @ibmcam_Packet_Format1(%struct.uvd* %343, i32 43, i32 30)
  %345 = load %struct.uvd*, %struct.uvd** %2, align 8
  %346 = call i32 @ibmcam_veio(%struct.uvd* %345, i32 0, i32 201, i32 281)
  %347 = load %struct.uvd*, %struct.uvd** %2, align 8
  %348 = call i32 @ibmcam_veio(%struct.uvd* %347, i32 0, i32 128, i32 265)
  %349 = load %struct.uvd*, %struct.uvd** %2, align 8
  %350 = call i32 @ibmcam_veio(%struct.uvd* %349, i32 0, i32 54, i32 258)
  %351 = load %struct.uvd*, %struct.uvd** %2, align 8
  %352 = call i32 @ibmcam_veio(%struct.uvd* %351, i32 0, i32 26, i32 260)
  %353 = load %struct.uvd*, %struct.uvd** %2, align 8
  %354 = call i32 @ibmcam_veio(%struct.uvd* %353, i32 0, i32 4, i32 282)
  %355 = load %struct.uvd*, %struct.uvd** %2, align 8
  %356 = call i32 @ibmcam_veio(%struct.uvd* %355, i32 0, i32 43, i32 284)
  %357 = load %struct.uvd*, %struct.uvd** %2, align 8
  %358 = call i32 @ibmcam_veio(%struct.uvd* %357, i32 0, i32 35, i32 298)
  %359 = load %struct.uvd*, %struct.uvd** %2, align 8
  %360 = call i32 @ibmcam_veio(%struct.uvd* %359, i32 0, i32 2, i32 262)
  %361 = load %struct.uvd*, %struct.uvd** %2, align 8
  %362 = call i32 @ibmcam_veio(%struct.uvd* %361, i32 0, i32 42, i32 263)
  br label %405

363:                                              ; preds = %334
  %364 = load %struct.uvd*, %struct.uvd** %2, align 8
  %365 = call i32 @ibmcam_Packet_Format1(%struct.uvd* %364, i32 43, i32 30)
  %366 = load %struct.uvd*, %struct.uvd** %2, align 8
  %367 = call i32 @ibmcam_veio(%struct.uvd* %366, i32 0, i32 201, i32 281)
  %368 = load %struct.uvd*, %struct.uvd** %2, align 8
  %369 = call i32 @ibmcam_veio(%struct.uvd* %368, i32 0, i32 128, i32 265)
  %370 = load %struct.uvd*, %struct.uvd** %2, align 8
  %371 = call i32 @ibmcam_veio(%struct.uvd* %370, i32 0, i32 4, i32 258)
  %372 = load %struct.uvd*, %struct.uvd** %2, align 8
  %373 = call i32 @ibmcam_veio(%struct.uvd* %372, i32 0, i32 2, i32 260)
  %374 = load %struct.uvd*, %struct.uvd** %2, align 8
  %375 = call i32 @ibmcam_veio(%struct.uvd* %374, i32 0, i32 4, i32 282)
  %376 = load %struct.uvd*, %struct.uvd** %2, align 8
  %377 = call i32 @ibmcam_veio(%struct.uvd* %376, i32 0, i32 43, i32 284)
  %378 = load %struct.uvd*, %struct.uvd** %2, align 8
  %379 = call i32 @ibmcam_veio(%struct.uvd* %378, i32 0, i32 35, i32 298)
  %380 = load %struct.uvd*, %struct.uvd** %2, align 8
  %381 = call i32 @ibmcam_veio(%struct.uvd* %380, i32 0, i32 1, i32 262)
  %382 = load %struct.uvd*, %struct.uvd** %2, align 8
  %383 = call i32 @ibmcam_veio(%struct.uvd* %382, i32 0, i32 202, i32 263)
  br label %405

384:                                              ; preds = %334
  %385 = load %struct.uvd*, %struct.uvd** %2, align 8
  %386 = call i32 @ibmcam_Packet_Format1(%struct.uvd* %385, i32 43, i32 31)
  %387 = load %struct.uvd*, %struct.uvd** %2, align 8
  %388 = call i32 @ibmcam_veio(%struct.uvd* %387, i32 0, i32 201, i32 281)
  %389 = load %struct.uvd*, %struct.uvd** %2, align 8
  %390 = call i32 @ibmcam_veio(%struct.uvd* %389, i32 0, i32 128, i32 265)
  %391 = load %struct.uvd*, %struct.uvd** %2, align 8
  %392 = call i32 @ibmcam_veio(%struct.uvd* %391, i32 0, i32 8, i32 258)
  %393 = load %struct.uvd*, %struct.uvd** %2, align 8
  %394 = call i32 @ibmcam_veio(%struct.uvd* %393, i32 0, i32 1, i32 260)
  %395 = load %struct.uvd*, %struct.uvd** %2, align 8
  %396 = call i32 @ibmcam_veio(%struct.uvd* %395, i32 0, i32 4, i32 282)
  %397 = load %struct.uvd*, %struct.uvd** %2, align 8
  %398 = call i32 @ibmcam_veio(%struct.uvd* %397, i32 0, i32 47, i32 284)
  %399 = load %struct.uvd*, %struct.uvd** %2, align 8
  %400 = call i32 @ibmcam_veio(%struct.uvd* %399, i32 0, i32 35, i32 298)
  %401 = load %struct.uvd*, %struct.uvd** %2, align 8
  %402 = call i32 @ibmcam_veio(%struct.uvd* %401, i32 0, i32 3, i32 262)
  %403 = load %struct.uvd*, %struct.uvd** %2, align 8
  %404 = call i32 @ibmcam_veio(%struct.uvd* %403, i32 0, i32 246, i32 263)
  br label %405

405:                                              ; preds = %334, %384, %363, %342
  %406 = load %struct.uvd*, %struct.uvd** %2, align 8
  %407 = call i64 @CAMERA_IS_OPERATIONAL(%struct.uvd* %406)
  %408 = icmp ne i64 %407, 0
  br i1 %408, label %409, label %410

409:                                              ; preds = %405
  br label %413

410:                                              ; preds = %405
  %411 = load i32, i32* @EFAULT, align 4
  %412 = sub nsw i32 0, %411
  br label %413

413:                                              ; preds = %410, %409
  %414 = phi i32 [ 0, %409 ], [ %412, %410 ]
  ret i32 %414
}

declare dso_local i32 @ibmcam_veio(%struct.uvd*, i32, i32, i32) #1

declare dso_local i32 @ibmcam_Packet_Format1(%struct.uvd*, i32, i32) #1

declare dso_local i32 @ibmcam_PacketFormat2(%struct.uvd*, i32, i32) #1

declare dso_local i64 @CAMERA_IS_OPERATIONAL(%struct.uvd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
