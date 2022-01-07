; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/firewire/extr_firedtv-avc.c_avc_tuner_dsd_dvb_c.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/firewire/extr_firedtv-avc.c_avc_tuner_dsd_dvb_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firedtv = type { i64 }
%struct.dvb_frontend_parameters = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.avc_command_frame = type { i32*, i32 }

@AVC_OPCODE_DSD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.firedtv*, %struct.dvb_frontend_parameters*)* @avc_tuner_dsd_dvb_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avc_tuner_dsd_dvb_c(%struct.firedtv* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca %struct.firedtv*, align 8
  %4 = alloca %struct.dvb_frontend_parameters*, align 8
  %5 = alloca %struct.avc_command_frame*, align 8
  store %struct.firedtv* %0, %struct.firedtv** %3, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %4, align 8
  %6 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %7 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to i8*
  %10 = bitcast i8* %9 to %struct.avc_command_frame*
  store %struct.avc_command_frame* %10, %struct.avc_command_frame** %5, align 8
  %11 = load i32, i32* @AVC_OPCODE_DSD, align 4
  %12 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %13 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 8
  %14 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %15 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  store i32 0, i32* %17, align 4
  %18 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %19 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  store i32 210, i32* %21, align 4
  %22 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %23 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  store i32 32, i32* %25, align 4
  %26 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %27 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 3
  store i32 0, i32* %29, align 4
  %30 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %31 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 4
  store i32 17, i32* %33, align 4
  %34 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %35 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 134
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 2, i32 0
  %42 = or i32 24, %41
  %43 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %44 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 128
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 1, i32 0
  %51 = or i32 %42, %50
  %52 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %53 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 5
  store i32 %51, i32* %55, align 4
  %56 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %57 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 6
  store i32 0, i32* %59, align 4
  %60 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %61 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 7
  store i32 0, i32* %63, align 4
  %64 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %65 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 8
  store i32 0, i32* %67, align 4
  %68 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %69 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 9
  store i32 0, i32* %71, align 4
  %72 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %73 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 10
  store i32 0, i32* %75, align 4
  %76 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %77 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sdiv i32 %78, 4000
  %80 = ashr i32 %79, 16
  %81 = and i32 %80, 255
  %82 = or i32 %81, 128
  %83 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %84 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 11
  store i32 %82, i32* %86, align 4
  %87 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %88 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = sdiv i32 %89, 4000
  %91 = ashr i32 %90, 8
  %92 = and i32 %91, 255
  %93 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %94 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 12
  store i32 %92, i32* %96, align 4
  %97 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %98 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = sdiv i32 %99, 4000
  %101 = and i32 %100, 255
  %102 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %103 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 13
  store i32 %101, i32* %105, align 4
  %106 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %107 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = sdiv i32 %110, 1000
  %112 = ashr i32 %111, 12
  %113 = and i32 %112, 255
  %114 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %115 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 14
  store i32 %113, i32* %117, align 4
  %118 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %119 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = sdiv i32 %122, 1000
  %124 = ashr i32 %123, 4
  %125 = and i32 %124, 255
  %126 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %127 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 15
  store i32 %125, i32* %129, align 4
  %130 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %131 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = sdiv i32 %134, 1000
  %136 = shl i32 %135, 4
  %137 = and i32 %136, 240
  %138 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %139 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 16
  store i32 %137, i32* %141, align 4
  %142 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %143 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 17
  store i32 0, i32* %145, align 4
  %146 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %147 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  switch i32 %150, label %187 [
    i32 141, label %151
    i32 140, label %156
    i32 139, label %161
    i32 137, label %166
    i32 136, label %171
    i32 135, label %176
    i32 138, label %181
    i32 134, label %186
  ]

151:                                              ; preds = %2
  %152 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %153 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 18
  store i32 1, i32* %155, align 4
  br label %192

156:                                              ; preds = %2
  %157 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %158 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 18
  store i32 2, i32* %160, align 4
  br label %192

161:                                              ; preds = %2
  %162 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %163 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 18
  store i32 3, i32* %165, align 4
  br label %192

166:                                              ; preds = %2
  %167 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %168 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %167, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 18
  store i32 4, i32* %170, align 4
  br label %192

171:                                              ; preds = %2
  %172 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %173 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 18
  store i32 5, i32* %175, align 4
  br label %192

176:                                              ; preds = %2
  %177 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %178 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %177, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 18
  store i32 6, i32* %180, align 4
  br label %192

181:                                              ; preds = %2
  %182 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %183 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %182, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 18
  store i32 8, i32* %185, align 4
  br label %192

186:                                              ; preds = %2
  br label %187

187:                                              ; preds = %2, %186
  %188 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %189 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %188, i32 0, i32 0
  %190 = load i32*, i32** %189, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 18
  store i32 0, i32* %191, align 4
  br label %192

192:                                              ; preds = %187, %181, %176, %171, %166, %161, %156, %151
  %193 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %4, align 8
  %194 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  switch i32 %197, label %224 [
    i32 132, label %198
    i32 130, label %203
    i32 129, label %208
    i32 133, label %213
    i32 131, label %218
    i32 128, label %223
  ]

198:                                              ; preds = %192
  %199 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %200 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %199, i32 0, i32 0
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 19
  store i32 8, i32* %202, align 4
  br label %229

203:                                              ; preds = %192
  %204 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %205 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %204, i32 0, i32 0
  %206 = load i32*, i32** %205, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 19
  store i32 16, i32* %207, align 4
  br label %229

208:                                              ; preds = %192
  %209 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %210 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %209, i32 0, i32 0
  %211 = load i32*, i32** %210, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 19
  store i32 24, i32* %212, align 4
  br label %229

213:                                              ; preds = %192
  %214 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %215 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %214, i32 0, i32 0
  %216 = load i32*, i32** %215, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 19
  store i32 32, i32* %217, align 4
  br label %229

218:                                              ; preds = %192
  %219 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %220 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %219, i32 0, i32 0
  %221 = load i32*, i32** %220, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 19
  store i32 40, i32* %222, align 4
  br label %229

223:                                              ; preds = %192
  br label %224

224:                                              ; preds = %192, %223
  %225 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %226 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %225, i32 0, i32 0
  %227 = load i32*, i32** %226, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 19
  store i32 0, i32* %228, align 4
  br label %229

229:                                              ; preds = %224, %218, %213, %208, %203, %198
  %230 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %231 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %230, i32 0, i32 0
  %232 = load i32*, i32** %231, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 20
  store i32 0, i32* %233, align 4
  %234 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %235 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %234, i32 0, i32 0
  %236 = load i32*, i32** %235, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 21
  store i32 0, i32* %237, align 4
  %238 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %239 = load %struct.avc_command_frame*, %struct.avc_command_frame** %5, align 8
  %240 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %239, i32 0, i32 0
  %241 = load i32*, i32** %240, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 22
  %243 = call i32 @add_pid_filter(%struct.firedtv* %238, i32* %242)
  %244 = add nsw i32 22, %243
  ret i32 %244
}

declare dso_local i32 @add_pid_filter(%struct.firedtv*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
