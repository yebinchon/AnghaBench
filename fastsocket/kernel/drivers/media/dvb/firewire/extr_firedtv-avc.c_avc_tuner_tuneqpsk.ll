; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/firewire/extr_firedtv-avc.c_avc_tuner_tuneqpsk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/firewire/extr_firedtv-avc.c_avc_tuner_tuneqpsk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firedtv = type { i64, i32, i32, %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32, i32, i32 }
%struct.dvb_frontend_parameters = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.avc_command_frame = type { i32*, i32 }

@AVC_OPCODE_VENDOR = common dso_local global i32 0, align 4
@SFE_VENDOR_DE_COMPANYID_0 = common dso_local global i32 0, align 4
@SFE_VENDOR_DE_COMPANYID_1 = common dso_local global i32 0, align 4
@SFE_VENDOR_DE_COMPANYID_2 = common dso_local global i32 0, align 4
@FIREDTV_DVB_S2 = common dso_local global i64 0, align 8
@SFE_VENDOR_OPCODE_TUNE_QPSK2 = common dso_local global i32 0, align 4
@SFE_VENDOR_OPCODE_TUNE_QPSK = common dso_local global i32 0, align 4
@SEC_VOLTAGE_18 = common dso_local global i32 0, align 4
@SEC_TONE_ON = common dso_local global i32 0, align 4
@SYS_DVBS2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.firedtv*, %struct.dvb_frontend_parameters*)* @avc_tuner_tuneqpsk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avc_tuner_tuneqpsk(%struct.firedtv* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.firedtv*, align 8
  %5 = alloca %struct.dvb_frontend_parameters*, align 8
  %6 = alloca %struct.avc_command_frame*, align 8
  store %struct.firedtv* %0, %struct.firedtv** %4, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %5, align 8
  %7 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %8 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %7, i32 0, i32 4
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i8*
  %11 = bitcast i8* %10 to %struct.avc_command_frame*
  store %struct.avc_command_frame* %11, %struct.avc_command_frame** %6, align 8
  %12 = load i32, i32* @AVC_OPCODE_VENDOR, align 4
  %13 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %14 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* @SFE_VENDOR_DE_COMPANYID_0, align 4
  %16 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %17 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 %15, i32* %19, align 4
  %20 = load i32, i32* @SFE_VENDOR_DE_COMPANYID_1, align 4
  %21 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %22 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  store i32 %20, i32* %24, align 4
  %25 = load i32, i32* @SFE_VENDOR_DE_COMPANYID_2, align 4
  %26 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %27 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  store i32 %25, i32* %29, align 4
  %30 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %31 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @FIREDTV_DVB_S2, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %2
  %36 = load i32, i32* @SFE_VENDOR_OPCODE_TUNE_QPSK2, align 4
  %37 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %38 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 3
  store i32 %36, i32* %40, align 4
  br label %47

41:                                               ; preds = %2
  %42 = load i32, i32* @SFE_VENDOR_OPCODE_TUNE_QPSK, align 4
  %43 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %44 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 3
  store i32 %42, i32* %46, align 4
  br label %47

47:                                               ; preds = %41, %35
  %48 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %49 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = ashr i32 %50, 24
  %52 = and i32 %51, 255
  %53 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %54 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 4
  store i32 %52, i32* %56, align 4
  %57 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %58 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = ashr i32 %59, 16
  %61 = and i32 %60, 255
  %62 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %63 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 5
  store i32 %61, i32* %65, align 4
  %66 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %67 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = ashr i32 %68, 8
  %70 = and i32 %69, 255
  %71 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %72 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 6
  store i32 %70, i32* %74, align 4
  %75 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %76 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, 255
  %79 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %80 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 7
  store i32 %78, i32* %82, align 4
  %83 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %84 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = sdiv i32 %87, 1000
  %89 = ashr i32 %88, 8
  %90 = and i32 %89, 255
  %91 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %92 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 8
  store i32 %90, i32* %94, align 4
  %95 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %96 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = sdiv i32 %99, 1000
  %101 = and i32 %100, 255
  %102 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %103 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 9
  store i32 %101, i32* %105, align 4
  %106 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %107 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  switch i32 %110, label %137 [
    i32 145, label %111
    i32 144, label %116
    i32 143, label %121
    i32 141, label %126
    i32 140, label %131
    i32 142, label %136
    i32 139, label %136
    i32 138, label %136
  ]

111:                                              ; preds = %47
  %112 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %113 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 10
  store i32 1, i32* %115, align 4
  br label %142

116:                                              ; preds = %47
  %117 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %118 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 10
  store i32 2, i32* %120, align 4
  br label %142

121:                                              ; preds = %47
  %122 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %123 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 10
  store i32 3, i32* %125, align 4
  br label %142

126:                                              ; preds = %47
  %127 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %128 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 10
  store i32 4, i32* %130, align 4
  br label %142

131:                                              ; preds = %47
  %132 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %133 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 10
  store i32 5, i32* %135, align 4
  br label %142

136:                                              ; preds = %47, %47, %47
  br label %137

137:                                              ; preds = %47, %136
  %138 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %139 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 10
  store i32 0, i32* %141, align 4
  br label %142

142:                                              ; preds = %137, %131, %126, %121, %116, %111
  %143 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %144 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = icmp eq i32 %145, 255
  br i1 %146, label %147, label %152

147:                                              ; preds = %142
  %148 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %149 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 11
  store i32 255, i32* %151, align 4
  br label %169

152:                                              ; preds = %142
  %153 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %154 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @SEC_VOLTAGE_18, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %163

158:                                              ; preds = %152
  %159 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %160 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %159, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 11
  store i32 0, i32* %162, align 4
  br label %168

163:                                              ; preds = %152
  %164 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %165 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %164, i32 0, i32 0
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 11
  store i32 1, i32* %167, align 4
  br label %168

168:                                              ; preds = %163, %158
  br label %169

169:                                              ; preds = %168, %147
  %170 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %171 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = icmp eq i32 %172, 255
  br i1 %173, label %174, label %179

174:                                              ; preds = %169
  %175 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %176 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %175, i32 0, i32 0
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 12
  store i32 255, i32* %178, align 4
  br label %196

179:                                              ; preds = %169
  %180 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %181 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @SEC_TONE_ON, align 4
  %184 = icmp eq i32 %182, %183
  br i1 %184, label %185, label %190

185:                                              ; preds = %179
  %186 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %187 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %186, i32 0, i32 0
  %188 = load i32*, i32** %187, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 12
  store i32 1, i32* %189, align 4
  br label %195

190:                                              ; preds = %179
  %191 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %192 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %191, i32 0, i32 0
  %193 = load i32*, i32** %192, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 12
  store i32 0, i32* %194, align 4
  br label %195

195:                                              ; preds = %190, %185
  br label %196

196:                                              ; preds = %195, %174
  %197 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %198 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @FIREDTV_DVB_S2, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %298

202:                                              ; preds = %196
  %203 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %204 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %203, i32 0, i32 3
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @SYS_DVBS2, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %210, label %284

210:                                              ; preds = %202
  %211 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %212 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %211, i32 0, i32 3
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 8
  switch i32 %215, label %231 [
    i32 133, label %216
    i32 132, label %221
    i32 134, label %226
  ]

216:                                              ; preds = %210
  %217 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %218 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %217, i32 0, i32 0
  %219 = load i32*, i32** %218, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 13
  store i32 1, i32* %220, align 4
  br label %236

221:                                              ; preds = %210
  %222 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %223 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %222, i32 0, i32 0
  %224 = load i32*, i32** %223, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 13
  store i32 2, i32* %225, align 4
  br label %236

226:                                              ; preds = %210
  %227 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %228 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %227, i32 0, i32 0
  %229 = load i32*, i32** %228, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 13
  store i32 3, i32* %230, align 4
  br label %236

231:                                              ; preds = %210
  %232 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %233 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %232, i32 0, i32 0
  %234 = load i32*, i32** %233, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 13
  store i32 2, i32* %235, align 4
  br label %236

236:                                              ; preds = %231, %226, %221, %216
  %237 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %238 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %237, i32 0, i32 3
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 4
  switch i32 %241, label %262 [
    i32 128, label %242
    i32 129, label %247
    i32 131, label %252
    i32 130, label %257
  ]

242:                                              ; preds = %236
  %243 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %244 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %243, i32 0, i32 0
  %245 = load i32*, i32** %244, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 14
  store i32 2, i32* %246, align 4
  br label %262

247:                                              ; preds = %236
  %248 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %249 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %248, i32 0, i32 0
  %250 = load i32*, i32** %249, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 14
  store i32 2, i32* %251, align 4
  br label %262

252:                                              ; preds = %236
  %253 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %254 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %253, i32 0, i32 0
  %255 = load i32*, i32** %254, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 14
  store i32 0, i32* %256, align 4
  br label %262

257:                                              ; preds = %236
  %258 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %259 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %258, i32 0, i32 0
  %260 = load i32*, i32** %259, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 14
  store i32 1, i32* %261, align 4
  br label %262

262:                                              ; preds = %236, %257, %252, %247, %242
  %263 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %264 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %263, i32 0, i32 3
  %265 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %265, i32 0, i32 3
  %267 = load i32, i32* %266, align 8
  switch i32 %267, label %283 [
    i32 137, label %268
    i32 136, label %273
    i32 135, label %278
  ]

268:                                              ; preds = %262
  %269 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %270 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %269, i32 0, i32 0
  %271 = load i32*, i32** %270, align 8
  %272 = getelementptr inbounds i32, i32* %271, i64 15
  store i32 0, i32* %272, align 4
  br label %283

273:                                              ; preds = %262
  %274 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %275 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %274, i32 0, i32 0
  %276 = load i32*, i32** %275, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 15
  store i32 0, i32* %277, align 4
  br label %283

278:                                              ; preds = %262
  %279 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %280 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %279, i32 0, i32 0
  %281 = load i32*, i32** %280, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 15
  store i32 1, i32* %282, align 4
  br label %283

283:                                              ; preds = %262, %278, %273, %268
  br label %297

284:                                              ; preds = %202
  %285 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %286 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %285, i32 0, i32 0
  %287 = load i32*, i32** %286, align 8
  %288 = getelementptr inbounds i32, i32* %287, i64 13
  store i32 1, i32* %288, align 4
  %289 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %290 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %289, i32 0, i32 0
  %291 = load i32*, i32** %290, align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 14
  store i32 255, i32* %292, align 4
  %293 = load %struct.avc_command_frame*, %struct.avc_command_frame** %6, align 8
  %294 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %293, i32 0, i32 0
  %295 = load i32*, i32** %294, align 8
  %296 = getelementptr inbounds i32, i32* %295, i64 15
  store i32 255, i32* %296, align 4
  br label %297

297:                                              ; preds = %284, %283
  store i32 16, i32* %3, align 4
  br label %299

298:                                              ; preds = %196
  store i32 13, i32* %3, align 4
  br label %299

299:                                              ; preds = %298, %297
  %300 = load i32, i32* %3, align 4
  ret i32 %300
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
