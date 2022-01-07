; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_xirlink_cit.c_cit_start_model1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_xirlink_cit.c_cit_start_model1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32 }

@cit_model1_ntries = common dso_local global i32 0, align 4
@cit_model1_ntries2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @cit_start_model1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cit_start_model1(%struct.gspca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca %struct.sd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %8 = bitcast %struct.gspca_dev* %7 to %struct.sd*
  store %struct.sd* %8, %struct.sd** %4, align 8
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %10 = call i32 @cit_get_clock_div(%struct.gspca_dev* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %2, align 4
  br label %331

15:                                               ; preds = %1
  %16 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %17 = call i32 @cit_read_reg(%struct.gspca_dev* %16, i32 296, i32 1)
  %18 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %19 = call i32 @cit_read_reg(%struct.gspca_dev* %18, i32 256, i32 0)
  %20 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %21 = call i32 @cit_write_reg(%struct.gspca_dev* %20, i32 1, i32 256)
  %22 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %23 = call i32 @cit_read_reg(%struct.gspca_dev* %22, i32 256, i32 0)
  %24 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %25 = call i32 @cit_write_reg(%struct.gspca_dev* %24, i32 129, i32 256)
  %26 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %27 = call i32 @cit_read_reg(%struct.gspca_dev* %26, i32 256, i32 0)
  %28 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %29 = call i32 @cit_write_reg(%struct.gspca_dev* %28, i32 1, i32 256)
  %30 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %31 = call i32 @cit_write_reg(%struct.gspca_dev* %30, i32 1, i32 264)
  %32 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %33 = call i32 @cit_write_reg(%struct.gspca_dev* %32, i32 3, i32 274)
  %34 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %35 = call i32 @cit_read_reg(%struct.gspca_dev* %34, i32 277, i32 0)
  %36 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %37 = call i32 @cit_write_reg(%struct.gspca_dev* %36, i32 6, i32 277)
  %38 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %39 = call i32 @cit_read_reg(%struct.gspca_dev* %38, i32 278, i32 0)
  %40 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %41 = call i32 @cit_write_reg(%struct.gspca_dev* %40, i32 68, i32 278)
  %42 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %43 = call i32 @cit_read_reg(%struct.gspca_dev* %42, i32 278, i32 0)
  %44 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %45 = call i32 @cit_write_reg(%struct.gspca_dev* %44, i32 64, i32 278)
  %46 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %47 = call i32 @cit_read_reg(%struct.gspca_dev* %46, i32 277, i32 0)
  %48 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %49 = call i32 @cit_write_reg(%struct.gspca_dev* %48, i32 14, i32 277)
  %50 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %51 = call i32 @cit_write_reg(%struct.gspca_dev* %50, i32 25, i32 300)
  %52 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %53 = call i32 @cit_Packet_Format1(%struct.gspca_dev* %52, i32 0, i32 30)
  %54 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %55 = call i32 @cit_Packet_Format1(%struct.gspca_dev* %54, i32 57, i32 13)
  %56 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %57 = call i32 @cit_Packet_Format1(%struct.gspca_dev* %56, i32 57, i32 9)
  %58 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %59 = call i32 @cit_Packet_Format1(%struct.gspca_dev* %58, i32 59, i32 0)
  %60 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %61 = call i32 @cit_Packet_Format1(%struct.gspca_dev* %60, i32 40, i32 34)
  %62 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %63 = call i32 @cit_Packet_Format1(%struct.gspca_dev* %62, i32 39, i32 0)
  %64 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %65 = call i32 @cit_Packet_Format1(%struct.gspca_dev* %64, i32 43, i32 31)
  %66 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %67 = call i32 @cit_Packet_Format1(%struct.gspca_dev* %66, i32 57, i32 8)
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %75, %15
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @cit_model1_ntries, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %68
  %73 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %74 = call i32 @cit_Packet_Format1(%struct.gspca_dev* %73, i32 44, i32 0)
  br label %75

75:                                               ; preds = %72
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %5, align 4
  br label %68

78:                                               ; preds = %68
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %86, %78
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @cit_model1_ntries, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %79
  %84 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %85 = call i32 @cit_Packet_Format1(%struct.gspca_dev* %84, i32 48, i32 20)
  br label %86

86:                                               ; preds = %83
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %5, align 4
  br label %79

89:                                               ; preds = %79
  %90 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %91 = call i32 @cit_PacketFormat2(%struct.gspca_dev* %90, i32 57, i32 2)
  %92 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %93 = call i32 @cit_PacketFormat2(%struct.gspca_dev* %92, i32 1, i32 225)
  %94 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %95 = call i32 @cit_PacketFormat2(%struct.gspca_dev* %94, i32 2, i32 205)
  %96 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %97 = call i32 @cit_PacketFormat2(%struct.gspca_dev* %96, i32 3, i32 205)
  %98 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %99 = call i32 @cit_PacketFormat2(%struct.gspca_dev* %98, i32 4, i32 250)
  %100 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %101 = call i32 @cit_PacketFormat2(%struct.gspca_dev* %100, i32 63, i32 255)
  %102 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %103 = call i32 @cit_PacketFormat2(%struct.gspca_dev* %102, i32 57, i32 0)
  %104 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %105 = call i32 @cit_PacketFormat2(%struct.gspca_dev* %104, i32 57, i32 2)
  %106 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %107 = call i32 @cit_PacketFormat2(%struct.gspca_dev* %106, i32 10, i32 55)
  %108 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %109 = call i32 @cit_PacketFormat2(%struct.gspca_dev* %108, i32 11, i32 184)
  %110 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %111 = call i32 @cit_PacketFormat2(%struct.gspca_dev* %110, i32 12, i32 243)
  %112 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %113 = call i32 @cit_PacketFormat2(%struct.gspca_dev* %112, i32 13, i32 227)
  %114 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %115 = call i32 @cit_PacketFormat2(%struct.gspca_dev* %114, i32 14, i32 13)
  %116 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %117 = call i32 @cit_PacketFormat2(%struct.gspca_dev* %116, i32 15, i32 242)
  %118 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %119 = call i32 @cit_PacketFormat2(%struct.gspca_dev* %118, i32 16, i32 213)
  %120 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %121 = call i32 @cit_PacketFormat2(%struct.gspca_dev* %120, i32 17, i32 186)
  %122 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %123 = call i32 @cit_PacketFormat2(%struct.gspca_dev* %122, i32 18, i32 83)
  %124 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %125 = call i32 @cit_PacketFormat2(%struct.gspca_dev* %124, i32 63, i32 255)
  %126 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %127 = call i32 @cit_PacketFormat2(%struct.gspca_dev* %126, i32 57, i32 0)
  %128 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %129 = call i32 @cit_PacketFormat2(%struct.gspca_dev* %128, i32 57, i32 2)
  %130 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %131 = call i32 @cit_PacketFormat2(%struct.gspca_dev* %130, i32 22, i32 0)
  %132 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %133 = call i32 @cit_PacketFormat2(%struct.gspca_dev* %132, i32 23, i32 40)
  %134 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %135 = call i32 @cit_PacketFormat2(%struct.gspca_dev* %134, i32 24, i32 125)
  %136 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %137 = call i32 @cit_PacketFormat2(%struct.gspca_dev* %136, i32 25, i32 190)
  %138 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %139 = call i32 @cit_PacketFormat2(%struct.gspca_dev* %138, i32 63, i32 255)
  %140 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %141 = call i32 @cit_PacketFormat2(%struct.gspca_dev* %140, i32 57, i32 0)
  store i32 0, i32* %5, align 4
  br label %142

142:                                              ; preds = %149, %89
  %143 = load i32, i32* %5, align 4
  %144 = load i32, i32* @cit_model1_ntries, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %152

146:                                              ; preds = %142
  %147 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %148 = call i32 @cit_Packet_Format1(%struct.gspca_dev* %147, i32 0, i32 24)
  br label %149

149:                                              ; preds = %146
  %150 = load i32, i32* %5, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %5, align 4
  br label %142

152:                                              ; preds = %142
  store i32 0, i32* %5, align 4
  br label %153

153:                                              ; preds = %160, %152
  %154 = load i32, i32* %5, align 4
  %155 = load i32, i32* @cit_model1_ntries, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %163

157:                                              ; preds = %153
  %158 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %159 = call i32 @cit_Packet_Format1(%struct.gspca_dev* %158, i32 19, i32 24)
  br label %160

160:                                              ; preds = %157
  %161 = load i32, i32* %5, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %5, align 4
  br label %153

163:                                              ; preds = %153
  store i32 0, i32* %5, align 4
  br label %164

164:                                              ; preds = %171, %163
  %165 = load i32, i32* %5, align 4
  %166 = load i32, i32* @cit_model1_ntries, align 4
  %167 = icmp slt i32 %165, %166
  br i1 %167, label %168, label %174

168:                                              ; preds = %164
  %169 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %170 = call i32 @cit_Packet_Format1(%struct.gspca_dev* %169, i32 20, i32 6)
  br label %171

171:                                              ; preds = %168
  %172 = load i32, i32* %5, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %5, align 4
  br label %164

174:                                              ; preds = %164
  %175 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %176 = call i32 @cit_Packet_Format1(%struct.gspca_dev* %175, i32 46, i32 4)
  store i32 0, i32* %5, align 4
  br label %177

177:                                              ; preds = %184, %174
  %178 = load i32, i32* %5, align 4
  %179 = load i32, i32* @cit_model1_ntries, align 4
  %180 = icmp slt i32 %178, %179
  br i1 %180, label %181, label %187

181:                                              ; preds = %177
  %182 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %183 = call i32 @cit_Packet_Format1(%struct.gspca_dev* %182, i32 45, i32 4)
  br label %184

184:                                              ; preds = %181
  %185 = load i32, i32* %5, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %5, align 4
  br label %177

187:                                              ; preds = %177
  store i32 0, i32* %5, align 4
  br label %188

188:                                              ; preds = %195, %187
  %189 = load i32, i32* %5, align 4
  %190 = load i32, i32* @cit_model1_ntries, align 4
  %191 = icmp slt i32 %189, %190
  br i1 %191, label %192, label %198

192:                                              ; preds = %188
  %193 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %194 = call i32 @cit_Packet_Format1(%struct.gspca_dev* %193, i32 41, i32 128)
  br label %195

195:                                              ; preds = %192
  %196 = load i32, i32* %5, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %5, align 4
  br label %188

198:                                              ; preds = %188
  %199 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %200 = call i32 @cit_Packet_Format1(%struct.gspca_dev* %199, i32 44, i32 1)
  %201 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %202 = call i32 @cit_Packet_Format1(%struct.gspca_dev* %201, i32 48, i32 23)
  %203 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %204 = call i32 @cit_Packet_Format1(%struct.gspca_dev* %203, i32 57, i32 8)
  store i32 0, i32* %5, align 4
  br label %205

205:                                              ; preds = %212, %198
  %206 = load i32, i32* %5, align 4
  %207 = load i32, i32* @cit_model1_ntries, align 4
  %208 = icmp slt i32 %206, %207
  br i1 %208, label %209, label %215

209:                                              ; preds = %205
  %210 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %211 = call i32 @cit_Packet_Format1(%struct.gspca_dev* %210, i32 52, i32 0)
  br label %212

212:                                              ; preds = %209
  %213 = load i32, i32* %5, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %5, align 4
  br label %205

215:                                              ; preds = %205
  %216 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %217 = call i32 @cit_write_reg(%struct.gspca_dev* %216, i32 0, i32 257)
  %218 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %219 = call i32 @cit_write_reg(%struct.gspca_dev* %218, i32 0, i32 266)
  %220 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %221 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  switch i32 %222, label %268 [
    i32 128, label %223
    i32 176, label %238
    i32 352, label %253
  ]

223:                                              ; preds = %215
  %224 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %225 = call i32 @cit_write_reg(%struct.gspca_dev* %224, i32 128, i32 259)
  %226 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %227 = call i32 @cit_write_reg(%struct.gspca_dev* %226, i32 96, i32 261)
  %228 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %229 = call i32 @cit_write_reg(%struct.gspca_dev* %228, i32 12, i32 267)
  %230 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %231 = call i32 @cit_write_reg(%struct.gspca_dev* %230, i32 4, i32 283)
  %232 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %233 = call i32 @cit_write_reg(%struct.gspca_dev* %232, i32 11, i32 285)
  %234 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %235 = call i32 @cit_write_reg(%struct.gspca_dev* %234, i32 0, i32 286)
  %236 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %237 = call i32 @cit_write_reg(%struct.gspca_dev* %236, i32 0, i32 297)
  br label %268

238:                                              ; preds = %215
  %239 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %240 = call i32 @cit_write_reg(%struct.gspca_dev* %239, i32 176, i32 259)
  %241 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %242 = call i32 @cit_write_reg(%struct.gspca_dev* %241, i32 143, i32 261)
  %243 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %244 = call i32 @cit_write_reg(%struct.gspca_dev* %243, i32 6, i32 267)
  %245 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %246 = call i32 @cit_write_reg(%struct.gspca_dev* %245, i32 4, i32 283)
  %247 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %248 = call i32 @cit_write_reg(%struct.gspca_dev* %247, i32 13, i32 285)
  %249 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %250 = call i32 @cit_write_reg(%struct.gspca_dev* %249, i32 0, i32 286)
  %251 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %252 = call i32 @cit_write_reg(%struct.gspca_dev* %251, i32 3, i32 297)
  br label %268

253:                                              ; preds = %215
  %254 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %255 = call i32 @cit_write_reg(%struct.gspca_dev* %254, i32 176, i32 259)
  %256 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %257 = call i32 @cit_write_reg(%struct.gspca_dev* %256, i32 144, i32 261)
  %258 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %259 = call i32 @cit_write_reg(%struct.gspca_dev* %258, i32 2, i32 267)
  %260 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %261 = call i32 @cit_write_reg(%struct.gspca_dev* %260, i32 4, i32 283)
  %262 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %263 = call i32 @cit_write_reg(%struct.gspca_dev* %262, i32 5, i32 285)
  %264 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %265 = call i32 @cit_write_reg(%struct.gspca_dev* %264, i32 0, i32 286)
  %266 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %267 = call i32 @cit_write_reg(%struct.gspca_dev* %266, i32 0, i32 297)
  br label %268

268:                                              ; preds = %215, %253, %238, %223
  %269 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %270 = call i32 @cit_write_reg(%struct.gspca_dev* %269, i32 255, i32 299)
  %271 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %272 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  switch i32 %273, label %325 [
    i32 128, label %274
    i32 176, label %291
    i32 352, label %308
  ]

274:                                              ; preds = %268
  %275 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %276 = call i32 @cit_Packet_Format1(%struct.gspca_dev* %275, i32 43, i32 30)
  %277 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %278 = call i32 @cit_write_reg(%struct.gspca_dev* %277, i32 201, i32 281)
  %279 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %280 = call i32 @cit_write_reg(%struct.gspca_dev* %279, i32 128, i32 265)
  %281 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %282 = call i32 @cit_write_reg(%struct.gspca_dev* %281, i32 54, i32 258)
  %283 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %284 = call i32 @cit_write_reg(%struct.gspca_dev* %283, i32 26, i32 260)
  %285 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %286 = call i32 @cit_write_reg(%struct.gspca_dev* %285, i32 4, i32 282)
  %287 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %288 = call i32 @cit_write_reg(%struct.gspca_dev* %287, i32 43, i32 284)
  %289 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %290 = call i32 @cit_write_reg(%struct.gspca_dev* %289, i32 35, i32 298)
  br label %325

291:                                              ; preds = %268
  %292 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %293 = call i32 @cit_Packet_Format1(%struct.gspca_dev* %292, i32 43, i32 30)
  %294 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %295 = call i32 @cit_write_reg(%struct.gspca_dev* %294, i32 201, i32 281)
  %296 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %297 = call i32 @cit_write_reg(%struct.gspca_dev* %296, i32 128, i32 265)
  %298 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %299 = call i32 @cit_write_reg(%struct.gspca_dev* %298, i32 4, i32 258)
  %300 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %301 = call i32 @cit_write_reg(%struct.gspca_dev* %300, i32 2, i32 260)
  %302 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %303 = call i32 @cit_write_reg(%struct.gspca_dev* %302, i32 4, i32 282)
  %304 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %305 = call i32 @cit_write_reg(%struct.gspca_dev* %304, i32 43, i32 284)
  %306 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %307 = call i32 @cit_write_reg(%struct.gspca_dev* %306, i32 35, i32 298)
  br label %325

308:                                              ; preds = %268
  %309 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %310 = call i32 @cit_Packet_Format1(%struct.gspca_dev* %309, i32 43, i32 31)
  %311 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %312 = call i32 @cit_write_reg(%struct.gspca_dev* %311, i32 201, i32 281)
  %313 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %314 = call i32 @cit_write_reg(%struct.gspca_dev* %313, i32 128, i32 265)
  %315 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %316 = call i32 @cit_write_reg(%struct.gspca_dev* %315, i32 8, i32 258)
  %317 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %318 = call i32 @cit_write_reg(%struct.gspca_dev* %317, i32 1, i32 260)
  %319 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %320 = call i32 @cit_write_reg(%struct.gspca_dev* %319, i32 4, i32 282)
  %321 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %322 = call i32 @cit_write_reg(%struct.gspca_dev* %321, i32 47, i32 284)
  %323 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %324 = call i32 @cit_write_reg(%struct.gspca_dev* %323, i32 35, i32 298)
  br label %325

325:                                              ; preds = %268, %308, %291, %274
  %326 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %327 = call i32 @cit_write_reg(%struct.gspca_dev* %326, i32 1, i32 256)
  %328 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %329 = load i32, i32* %6, align 4
  %330 = call i32 @cit_write_reg(%struct.gspca_dev* %328, i32 %329, i32 273)
  store i32 0, i32* %2, align 4
  br label %331

331:                                              ; preds = %325, %13
  %332 = load i32, i32* %2, align 4
  ret i32 %332
}

declare dso_local i32 @cit_get_clock_div(%struct.gspca_dev*) #1

declare dso_local i32 @cit_read_reg(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @cit_write_reg(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @cit_Packet_Format1(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @cit_PacketFormat2(%struct.gspca_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
