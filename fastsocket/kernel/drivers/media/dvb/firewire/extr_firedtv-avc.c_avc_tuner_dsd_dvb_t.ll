; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/firewire/extr_firedtv-avc.c_avc_tuner_dsd_dvb_t.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/firewire/extr_firedtv-avc.c_avc_tuner_dsd_dvb_t.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firedtv = type { i64 }
%struct.dvb_frontend_parameters = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.dvb_ofdm_parameters }
%struct.dvb_ofdm_parameters = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.avc_command_frame = type { i32*, i32 }

@AVC_OPCODE_DSD = common dso_local global i32 0, align 4
@QAM_AUTO = common dso_local global i32 0, align 4
@FEC_AUTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.firedtv*, %struct.dvb_frontend_parameters*)* @avc_tuner_dsd_dvb_t to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avc_tuner_dsd_dvb_t(%struct.firedtv* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca %struct.firedtv*, align 8
  %4 = alloca %struct.dvb_frontend_parameters*, align 8
  %5 = alloca %struct.dvb_ofdm_parameters*, align 8
  %6 = alloca %struct.avc_command_frame*, align 8
  store %struct.firedtv* %0, %struct.firedtv** %3, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %4, align 8
  %7 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.dvb_ofdm_parameters* %9, %struct.dvb_ofdm_parameters** %5, align 8
  %10 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %11 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = bitcast i8* %13 to %struct.avc_command_frame*
  store %struct.avc_command_frame* %14, %struct.avc_command_frame** %6, align 8
  %15 = load i32, i32* @AVC_OPCODE_DSD, align 4
  %16 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %17 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 8
  %18 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %19 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  store i32 0, i32* %21, align 4
  %22 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %23 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  store i32 210, i32* %25, align 4
  %26 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %27 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  store i32 32, i32* %29, align 4
  %30 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %31 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 3
  store i32 0, i32* %33, align 4
  %34 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %35 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 4
  store i32 12, i32* %37, align 4
  %38 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %5, align 8
  %39 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 149
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 32, i32 0
  %44 = or i32 64, %43
  %45 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %5, align 8
  %46 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @QAM_AUTO, align 4
  %49 = icmp ne i32 %47, %48
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 16, i32 0
  %52 = or i32 %44, %51
  %53 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %5, align 8
  %54 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 135
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 8, i32 0
  %59 = or i32 %52, %58
  %60 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %5, align 8
  %61 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @FEC_AUTO, align 4
  %64 = icmp ne i32 %62, %63
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 4, i32 0
  %67 = or i32 %59, %66
  %68 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %5, align 8
  %69 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @FEC_AUTO, align 4
  %72 = icmp ne i32 %70, %71
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i32 2, i32 0
  %75 = or i32 %67, %74
  %76 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %5, align 8
  %77 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 139
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i32 1, i32 0
  %82 = or i32 %75, %81
  %83 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %84 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 5
  store i32 %82, i32* %86, align 4
  %87 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %5, align 8
  %88 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 128
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i32 64, i32 0
  %93 = or i32 0, %92
  %94 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %95 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 6
  store i32 %93, i32* %97, align 4
  %98 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %99 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 7
  store i32 0, i32* %101, align 4
  %102 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %103 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = sdiv i32 %104, 10
  %106 = ashr i32 %105, 24
  %107 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %108 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 8
  store i32 %106, i32* %110, align 4
  %111 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %112 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = sdiv i32 %113, 10
  %115 = ashr i32 %114, 16
  %116 = and i32 %115, 255
  %117 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %118 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 9
  store i32 %116, i32* %120, align 4
  %121 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %122 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = sdiv i32 %123, 10
  %125 = ashr i32 %124, 8
  %126 = and i32 %125, 255
  %127 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %128 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 10
  store i32 %126, i32* %130, align 4
  %131 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %132 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = sdiv i32 %133, 10
  %135 = and i32 %134, 255
  %136 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %137 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 11
  store i32 %135, i32* %139, align 4
  %140 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %5, align 8
  %141 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  switch i32 %142, label %149 [
    i32 151, label %143
    i32 150, label %148
    i32 152, label %148
    i32 149, label %148
  ]

143:                                              ; preds = %2
  %144 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %145 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 12
  store i32 32, i32* %147, align 4
  br label %154

148:                                              ; preds = %2, %2, %2
  br label %149

149:                                              ; preds = %2, %148
  %150 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %151 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 12
  store i32 0, i32* %153, align 4
  br label %154

154:                                              ; preds = %149, %143
  %155 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %5, align 8
  %156 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  switch i32 %157, label %169 [
    i32 133, label %158
    i32 132, label %163
    i32 131, label %168
  ]

158:                                              ; preds = %154
  %159 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %160 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %159, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 13
  store i32 64, i32* %162, align 4
  br label %174

163:                                              ; preds = %154
  %164 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %165 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %164, i32 0, i32 0
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 13
  store i32 128, i32* %167, align 4
  br label %174

168:                                              ; preds = %154
  br label %169

169:                                              ; preds = %154, %168
  %170 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %171 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %170, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 13
  store i32 0, i32* %173, align 4
  br label %174

174:                                              ; preds = %169, %163, %158
  %175 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %5, align 8
  %176 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  switch i32 %177, label %200 [
    i32 138, label %178
    i32 137, label %185
    i32 136, label %192
    i32 135, label %199
    i32 134, label %199
  ]

178:                                              ; preds = %174
  %179 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %180 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %179, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 13
  %183 = load i32, i32* %182, align 4
  %184 = or i32 %183, 8
  store i32 %184, i32* %182, align 4
  br label %201

185:                                              ; preds = %174
  %186 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %187 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %186, i32 0, i32 0
  %188 = load i32*, i32** %187, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 13
  %190 = load i32, i32* %189, align 4
  %191 = or i32 %190, 16
  store i32 %191, i32* %189, align 4
  br label %201

192:                                              ; preds = %174
  %193 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %194 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %193, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 13
  %197 = load i32, i32* %196, align 4
  %198 = or i32 %197, 24
  store i32 %198, i32* %196, align 4
  br label %201

199:                                              ; preds = %174, %174
  br label %200

200:                                              ; preds = %174, %199
  br label %201

201:                                              ; preds = %200, %192, %185, %178
  %202 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %5, align 8
  %203 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 4
  switch i32 %204, label %234 [
    i32 147, label %205
    i32 146, label %212
    i32 145, label %219
    i32 144, label %226
    i32 148, label %233
  ]

205:                                              ; preds = %201
  %206 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %207 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %206, i32 0, i32 0
  %208 = load i32*, i32** %207, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 13
  %210 = load i32, i32* %209, align 4
  %211 = or i32 %210, 1
  store i32 %211, i32* %209, align 4
  br label %235

212:                                              ; preds = %201
  %213 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %214 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %213, i32 0, i32 0
  %215 = load i32*, i32** %214, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 13
  %217 = load i32, i32* %216, align 4
  %218 = or i32 %217, 2
  store i32 %218, i32* %216, align 4
  br label %235

219:                                              ; preds = %201
  %220 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %221 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %220, i32 0, i32 0
  %222 = load i32*, i32** %221, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 13
  %224 = load i32, i32* %223, align 4
  %225 = or i32 %224, 3
  store i32 %225, i32* %223, align 4
  br label %235

226:                                              ; preds = %201
  %227 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %228 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %227, i32 0, i32 0
  %229 = load i32*, i32** %228, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 13
  %231 = load i32, i32* %230, align 4
  %232 = or i32 %231, 4
  store i32 %232, i32* %230, align 4
  br label %235

233:                                              ; preds = %201
  br label %234

234:                                              ; preds = %201, %233
  br label %235

235:                                              ; preds = %234, %226, %219, %212, %205
  %236 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %5, align 8
  %237 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %236, i32 0, i32 4
  %238 = load i32, i32* %237, align 4
  switch i32 %238, label %260 [
    i32 147, label %239
    i32 146, label %244
    i32 145, label %249
    i32 144, label %254
    i32 148, label %259
  ]

239:                                              ; preds = %235
  %240 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %241 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %240, i32 0, i32 0
  %242 = load i32*, i32** %241, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 14
  store i32 32, i32* %243, align 4
  br label %265

244:                                              ; preds = %235
  %245 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %246 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %245, i32 0, i32 0
  %247 = load i32*, i32** %246, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 14
  store i32 64, i32* %248, align 4
  br label %265

249:                                              ; preds = %235
  %250 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %251 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %250, i32 0, i32 0
  %252 = load i32*, i32** %251, align 8
  %253 = getelementptr inbounds i32, i32* %252, i64 14
  store i32 96, i32* %253, align 4
  br label %265

254:                                              ; preds = %235
  %255 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %256 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %255, i32 0, i32 0
  %257 = load i32*, i32** %256, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 14
  store i32 128, i32* %258, align 4
  br label %265

259:                                              ; preds = %235
  br label %260

260:                                              ; preds = %235, %259
  %261 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %262 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %261, i32 0, i32 0
  %263 = load i32*, i32** %262, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 14
  store i32 0, i32* %264, align 4
  br label %265

265:                                              ; preds = %260, %254, %249, %244, %239
  %266 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %5, align 8
  %267 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %266, i32 0, i32 5
  %268 = load i32, i32* %267, align 4
  switch i32 %268, label %291 [
    i32 143, label %269
    i32 140, label %276
    i32 141, label %283
    i32 142, label %290
    i32 139, label %290
  ]

269:                                              ; preds = %265
  %270 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %271 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %270, i32 0, i32 0
  %272 = load i32*, i32** %271, align 8
  %273 = getelementptr inbounds i32, i32* %272, i64 14
  %274 = load i32, i32* %273, align 4
  %275 = or i32 %274, 8
  store i32 %275, i32* %273, align 4
  br label %292

276:                                              ; preds = %265
  %277 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %278 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %277, i32 0, i32 0
  %279 = load i32*, i32** %278, align 8
  %280 = getelementptr inbounds i32, i32* %279, i64 14
  %281 = load i32, i32* %280, align 4
  %282 = or i32 %281, 16
  store i32 %282, i32* %280, align 4
  br label %292

283:                                              ; preds = %265
  %284 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %285 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %284, i32 0, i32 0
  %286 = load i32*, i32** %285, align 8
  %287 = getelementptr inbounds i32, i32* %286, i64 14
  %288 = load i32, i32* %287, align 4
  %289 = or i32 %288, 24
  store i32 %289, i32* %287, align 4
  br label %292

290:                                              ; preds = %265, %265
  br label %291

291:                                              ; preds = %265, %290
  br label %292

292:                                              ; preds = %291, %283, %276, %269
  %293 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %5, align 8
  %294 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %293, i32 0, i32 6
  %295 = load i32, i32* %294, align 4
  switch i32 %295, label %304 [
    i32 129, label %296
    i32 130, label %303
    i32 128, label %303
  ]

296:                                              ; preds = %292
  %297 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %298 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %297, i32 0, i32 0
  %299 = load i32*, i32** %298, align 8
  %300 = getelementptr inbounds i32, i32* %299, i64 14
  %301 = load i32, i32* %300, align 4
  %302 = or i32 %301, 2
  store i32 %302, i32* %300, align 4
  br label %305

303:                                              ; preds = %292, %292
  br label %304

304:                                              ; preds = %292, %303
  br label %305

305:                                              ; preds = %304, %296
  %306 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %307 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %306, i32 0, i32 0
  %308 = load i32*, i32** %307, align 8
  %309 = getelementptr inbounds i32, i32* %308, i64 15
  store i32 0, i32* %309, align 4
  %310 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %311 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %310, i32 0, i32 0
  %312 = load i32*, i32** %311, align 8
  %313 = getelementptr inbounds i32, i32* %312, i64 16
  store i32 0, i32* %313, align 4
  %314 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %315 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %316 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %315, i32 0, i32 0
  %317 = load i32*, i32** %316, align 8
  %318 = getelementptr inbounds i32, i32* %317, i64 17
  %319 = call i32 @add_pid_filter(%struct.firedtv* %314, i32* %318)
  %320 = add nsw i32 17, %319
  ret i32 %320
}

declare dso_local i32 @add_pid_filter(%struct.firedtv*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
