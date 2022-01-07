; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_l64781.c_apply_frontend_param.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_l64781.c_apply_frontend_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_6__, %struct.l64781_state* }
%struct.TYPE_6__ = type { i32 (%struct.dvb_frontend.0*, i32)*, %struct.TYPE_5__ }
%struct.dvb_frontend.0 = type opaque
%struct.TYPE_5__ = type { i32 (%struct.dvb_frontend.1*, %struct.dvb_frontend_parameters*)* }
%struct.dvb_frontend.1 = type opaque
%struct.l64781_state = type { i32 }
%struct.dvb_frontend_parameters = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.dvb_ofdm_parameters }
%struct.dvb_ofdm_parameters = type { i64, i64, i32, i64, i64, i32, i64 }

@apply_frontend_param.fec_tab = internal constant [8 x i32] [i32 7, i32 0, i32 1, i32 2, i32 9, i32 3, i32 10, i32 4], align 16
@apply_frontend_param.qam_tab = internal constant [4 x i32] [i32 2, i32 4, i32 0, i32 6], align 16
@apply_frontend_param.bw_tab = internal constant [3 x i32] [i32 8, i32 7, i32 6], align 4
@apply_frontend_param.guard_tab = internal constant [4 x i32] [i32 1, i32 2, i32 4, i32 8], align 16
@apply_frontend_param.ppm = internal constant i32 8000, align 4
@BANDWIDTH_8_MHZ = common dso_local global i32 0, align 4
@INVERSION_ON = common dso_local global i64 0, align 8
@INVERSION_OFF = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@FEC_1_2 = common dso_local global i64 0, align 8
@FEC_2_3 = common dso_local global i64 0, align 8
@FEC_3_4 = common dso_local global i64 0, align 8
@FEC_5_6 = common dso_local global i64 0, align 8
@FEC_7_8 = common dso_local global i64 0, align 8
@HIERARCHY_NONE = common dso_local global i32 0, align 4
@QPSK = common dso_local global i64 0, align 8
@QAM_16 = common dso_local global i64 0, align 8
@QAM_64 = common dso_local global i64 0, align 8
@TRANSMISSION_MODE_2K = common dso_local global i32 0, align 4
@TRANSMISSION_MODE_8K = common dso_local global i32 0, align 4
@GUARD_INTERVAL_1_32 = common dso_local global i64 0, align 8
@GUARD_INTERVAL_1_4 = common dso_local global i64 0, align 8
@HIERARCHY_4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @apply_frontend_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apply_frontend_param(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_frontend_parameters*, align 8
  %6 = alloca %struct.l64781_state*, align 8
  %7 = alloca %struct.dvb_ofdm_parameters*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %5, align 8
  %15 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %16 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %15, i32 0, i32 1
  %17 = load %struct.l64781_state*, %struct.l64781_state** %16, align 8
  store %struct.l64781_state* %17, %struct.l64781_state** %6, align 8
  %18 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %19 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store %struct.dvb_ofdm_parameters* %20, %struct.dvb_ofdm_parameters** %7, align 8
  %21 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %7, align 8
  %22 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* @BANDWIDTH_8_MHZ, align 4
  %25 = sext i32 %24 to i64
  %26 = sub i64 %23, %25
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %14, align 4
  %28 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %29 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32 (%struct.dvb_frontend.1*, %struct.dvb_frontend_parameters*)*, i32 (%struct.dvb_frontend.1*, %struct.dvb_frontend_parameters*)** %31, align 8
  %33 = icmp ne i32 (%struct.dvb_frontend.1*, %struct.dvb_frontend_parameters*)* %32, null
  br i1 %33, label %34, label %58

34:                                               ; preds = %2
  %35 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %36 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32 (%struct.dvb_frontend.1*, %struct.dvb_frontend_parameters*)*, i32 (%struct.dvb_frontend.1*, %struct.dvb_frontend_parameters*)** %38, align 8
  %40 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %41 = bitcast %struct.dvb_frontend* %40 to %struct.dvb_frontend.1*
  %42 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %43 = call i32 %39(%struct.dvb_frontend.1* %41, %struct.dvb_frontend_parameters* %42)
  %44 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %45 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %46, align 8
  %48 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %47, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %34
  %50 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %51 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %52, align 8
  %54 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %55 = bitcast %struct.dvb_frontend* %54 to %struct.dvb_frontend.0*
  %56 = call i32 %53(%struct.dvb_frontend.0* %55, i32 0)
  br label %57

57:                                               ; preds = %49, %34
  br label %58

58:                                               ; preds = %57, %2
  %59 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %60 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @INVERSION_ON, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %58
  %65 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %66 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @INVERSION_OFF, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %394

73:                                               ; preds = %64, %58
  %74 = load i32, i32* %14, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %14, align 4
  %78 = icmp sgt i32 %77, 2
  br i1 %78, label %79, label %82

79:                                               ; preds = %76, %73
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %394

82:                                               ; preds = %76
  %83 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %7, align 8
  %84 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @FEC_1_2, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %115

88:                                               ; preds = %82
  %89 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %7, align 8
  %90 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @FEC_2_3, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %115

94:                                               ; preds = %88
  %95 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %7, align 8
  %96 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @FEC_3_4, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %115

100:                                              ; preds = %94
  %101 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %7, align 8
  %102 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @FEC_5_6, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %115

106:                                              ; preds = %100
  %107 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %7, align 8
  %108 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @FEC_7_8, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %106
  %113 = load i32, i32* @EINVAL, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %3, align 4
  br label %394

115:                                              ; preds = %106, %100, %94, %88, %82
  %116 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %7, align 8
  %117 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @HIERARCHY_NONE, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %121, label %154

121:                                              ; preds = %115
  %122 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %7, align 8
  %123 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @FEC_1_2, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %154

127:                                              ; preds = %121
  %128 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %7, align 8
  %129 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @FEC_2_3, align 8
  %132 = icmp ne i64 %130, %131
  br i1 %132, label %133, label %154

133:                                              ; preds = %127
  %134 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %7, align 8
  %135 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @FEC_3_4, align 8
  %138 = icmp ne i64 %136, %137
  br i1 %138, label %139, label %154

139:                                              ; preds = %133
  %140 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %7, align 8
  %141 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %140, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @FEC_5_6, align 8
  %144 = icmp ne i64 %142, %143
  br i1 %144, label %145, label %154

145:                                              ; preds = %139
  %146 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %7, align 8
  %147 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %146, i32 0, i32 3
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @FEC_7_8, align 8
  %150 = icmp ne i64 %148, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %145
  %152 = load i32, i32* @EINVAL, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %3, align 4
  br label %394

154:                                              ; preds = %145, %139, %133, %127, %121, %115
  %155 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %7, align 8
  %156 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %155, i32 0, i32 4
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @QPSK, align 8
  %159 = icmp ne i64 %157, %158
  br i1 %159, label %160, label %175

160:                                              ; preds = %154
  %161 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %7, align 8
  %162 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %161, i32 0, i32 4
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @QAM_16, align 8
  %165 = icmp ne i64 %163, %164
  br i1 %165, label %166, label %175

166:                                              ; preds = %160
  %167 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %7, align 8
  %168 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %167, i32 0, i32 4
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @QAM_64, align 8
  %171 = icmp ne i64 %169, %170
  br i1 %171, label %172, label %175

172:                                              ; preds = %166
  %173 = load i32, i32* @EINVAL, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %3, align 4
  br label %394

175:                                              ; preds = %166, %160, %154
  %176 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %7, align 8
  %177 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %176, i32 0, i32 5
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @TRANSMISSION_MODE_2K, align 4
  %180 = icmp ne i32 %178, %179
  br i1 %180, label %181, label %190

181:                                              ; preds = %175
  %182 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %7, align 8
  %183 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %182, i32 0, i32 5
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @TRANSMISSION_MODE_8K, align 4
  %186 = icmp ne i32 %184, %185
  br i1 %186, label %187, label %190

187:                                              ; preds = %181
  %188 = load i32, i32* @EINVAL, align 4
  %189 = sub nsw i32 0, %188
  store i32 %189, i32* %3, align 4
  br label %394

190:                                              ; preds = %181, %175
  %191 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %7, align 8
  %192 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %191, i32 0, i32 6
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @GUARD_INTERVAL_1_32, align 8
  %195 = icmp ult i64 %193, %194
  br i1 %195, label %202, label %196

196:                                              ; preds = %190
  %197 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %7, align 8
  %198 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %197, i32 0, i32 6
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @GUARD_INTERVAL_1_4, align 8
  %201 = icmp ugt i64 %199, %200
  br i1 %201, label %202, label %205

202:                                              ; preds = %196, %190
  %203 = load i32, i32* @EINVAL, align 4
  %204 = sub nsw i32 0, %203
  store i32 %204, i32* %3, align 4
  br label %394

205:                                              ; preds = %196
  %206 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %7, align 8
  %207 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @HIERARCHY_NONE, align 4
  %210 = icmp slt i32 %208, %209
  br i1 %210, label %217, label %211

211:                                              ; preds = %205
  %212 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %7, align 8
  %213 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* @HIERARCHY_4, align 4
  %216 = icmp sgt i32 %214, %215
  br i1 %216, label %217, label %220

217:                                              ; preds = %211, %205
  %218 = load i32, i32* @EINVAL, align 4
  %219 = sub nsw i32 0, %218
  store i32 %219, i32* %3, align 4
  br label %394

220:                                              ; preds = %211
  %221 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %7, align 8
  %222 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = getelementptr inbounds [3 x i32], [3 x i32]* @apply_frontend_param.bw_tab, i64 0, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = sdiv i32 524288000, %225
  %227 = sdiv i32 %226, 1000000
  %228 = sub nsw i32 16384, %227
  store i32 %228, i32* %8, align 4
  %229 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %7, align 8
  %230 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = getelementptr inbounds [3 x i32], [3 x i32]* @apply_frontend_param.bw_tab, i64 0, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = sext i32 %233 to i64
  %235 = udiv i64 270582937, %234
  %236 = and i64 %235, 16777215
  %237 = trunc i64 %236 to i32
  store i32 %237, i32* %9, align 4
  store i32 387072, i32* %10, align 4
  %238 = load i32, i32* %10, align 4
  %239 = mul nsw i32 %238, 16
  store i32 %239, i32* %10, align 4
  %240 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %7, align 8
  %241 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = getelementptr inbounds [3 x i32], [3 x i32]* @apply_frontend_param.bw_tab, i64 0, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* %10, align 4
  %246 = mul nsw i32 %245, %244
  store i32 %246, i32* %10, align 4
  %247 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %7, align 8
  %248 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %247, i32 0, i32 4
  %249 = load i64, i64* %248, align 8
  %250 = getelementptr inbounds [4 x i32], [4 x i32]* @apply_frontend_param.qam_tab, i64 0, i64 %249
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* %10, align 4
  %253 = mul nsw i32 %252, %251
  store i32 %253, i32* %10, align 4
  %254 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %7, align 8
  %255 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %254, i32 0, i32 1
  %256 = load i64, i64* %255, align 8
  %257 = add nsw i64 %256, 1
  %258 = load i32, i32* %10, align 4
  %259 = sext i32 %258 to i64
  %260 = sdiv i64 %259, %257
  %261 = trunc i64 %260 to i32
  store i32 %261, i32* %10, align 4
  %262 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %7, align 8
  %263 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %262, i32 0, i32 6
  %264 = load i64, i64* %263, align 8
  %265 = getelementptr inbounds [4 x i32], [4 x i32]* @apply_frontend_param.guard_tab, i64 0, i64 %264
  %266 = load i32, i32* %265, align 4
  %267 = add nsw i32 %266, 32
  %268 = load i32, i32* %10, align 4
  %269 = sdiv i32 %268, %267
  store i32 %269, i32* %10, align 4
  %270 = load i32, i32* %10, align 4
  %271 = mul nsw i32 %270, 1000
  store i32 %271, i32* %10, align 4
  %272 = load i32, i32* %10, align 4
  %273 = sdiv i32 %272, 1008
  store i32 %273, i32* %10, align 4
  %274 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %7, align 8
  %275 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %274, i32 0, i32 1
  %276 = load i64, i64* %275, align 8
  %277 = load i32, i32* %10, align 4
  %278 = sext i32 %277 to i64
  %279 = mul nsw i64 %278, %276
  %280 = trunc i64 %279 to i32
  store i32 %280, i32* %10, align 4
  %281 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %7, align 8
  %282 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %281, i32 0, i32 5
  %283 = load i32, i32* %282, align 8
  %284 = shl i32 %283, 2
  %285 = sext i32 %284 to i64
  %286 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %7, align 8
  %287 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %286, i32 0, i32 6
  %288 = load i64, i64* %287, align 8
  %289 = or i64 %285, %288
  %290 = trunc i64 %289 to i32
  store i32 %290, i32* %11, align 4
  %291 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %7, align 8
  %292 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %291, i32 0, i32 1
  %293 = load i64, i64* %292, align 8
  %294 = getelementptr inbounds [8 x i32], [8 x i32]* @apply_frontend_param.fec_tab, i64 0, i64 %293
  %295 = load i32, i32* %294, align 4
  store i32 %295, i32* %12, align 4
  %296 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %7, align 8
  %297 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %296, i32 0, i32 2
  %298 = load i32, i32* %297, align 8
  %299 = load i32, i32* @HIERARCHY_NONE, align 4
  %300 = icmp ne i32 %298, %299
  br i1 %300, label %301, label %312

301:                                              ; preds = %220
  %302 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %7, align 8
  %303 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %302, i32 0, i32 3
  %304 = load i64, i64* %303, align 8
  %305 = load i64, i64* @FEC_1_2, align 8
  %306 = sub nsw i64 %304, %305
  %307 = shl i64 %306, 3
  %308 = load i32, i32* %12, align 4
  %309 = sext i32 %308 to i64
  %310 = or i64 %309, %307
  %311 = trunc i64 %310 to i32
  store i32 %311, i32* %12, align 4
  br label %312

312:                                              ; preds = %301, %220
  %313 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %7, align 8
  %314 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %313, i32 0, i32 2
  %315 = load i32, i32* %314, align 8
  %316 = shl i32 %315, 2
  %317 = sext i32 %316 to i64
  %318 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %7, align 8
  %319 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %318, i32 0, i32 4
  %320 = load i64, i64* %319, align 8
  %321 = or i64 %317, %320
  %322 = trunc i64 %321 to i32
  store i32 %322, i32* %13, align 4
  %323 = load %struct.l64781_state*, %struct.l64781_state** %6, align 8
  %324 = load i32, i32* %11, align 4
  %325 = call i32 @l64781_writereg(%struct.l64781_state* %323, i32 4, i32 %324)
  %326 = load %struct.l64781_state*, %struct.l64781_state** %6, align 8
  %327 = load i32, i32* %12, align 4
  %328 = call i32 @l64781_writereg(%struct.l64781_state* %326, i32 5, i32 %327)
  %329 = load %struct.l64781_state*, %struct.l64781_state** %6, align 8
  %330 = load i32, i32* %13, align 4
  %331 = call i32 @l64781_writereg(%struct.l64781_state* %329, i32 6, i32 %330)
  %332 = load %struct.l64781_state*, %struct.l64781_state** %6, align 8
  %333 = call i32 @reset_afc(%struct.l64781_state* %332)
  %334 = load %struct.l64781_state*, %struct.l64781_state** %6, align 8
  %335 = load %struct.dvb_ofdm_parameters*, %struct.dvb_ofdm_parameters** %7, align 8
  %336 = getelementptr inbounds %struct.dvb_ofdm_parameters, %struct.dvb_ofdm_parameters* %335, i32 0, i32 5
  %337 = load i32, i32* %336, align 8
  %338 = load i32, i32* @TRANSMISSION_MODE_2K, align 4
  %339 = icmp eq i32 %337, %338
  %340 = zext i1 %339 to i64
  %341 = select i1 %339, i32 1, i32 3
  %342 = call i32 @l64781_writereg(%struct.l64781_state* %334, i32 21, i32 %341)
  %343 = load %struct.l64781_state*, %struct.l64781_state** %6, align 8
  %344 = load i32, i32* %9, align 4
  %345 = and i32 %344, 255
  %346 = call i32 @l64781_writereg(%struct.l64781_state* %343, i32 22, i32 %345)
  %347 = load %struct.l64781_state*, %struct.l64781_state** %6, align 8
  %348 = load i32, i32* %9, align 4
  %349 = ashr i32 %348, 8
  %350 = and i32 %349, 255
  %351 = call i32 @l64781_writereg(%struct.l64781_state* %347, i32 23, i32 %350)
  %352 = load %struct.l64781_state*, %struct.l64781_state** %6, align 8
  %353 = load i32, i32* %9, align 4
  %354 = ashr i32 %353, 16
  %355 = and i32 %354, 255
  %356 = call i32 @l64781_writereg(%struct.l64781_state* %352, i32 24, i32 %355)
  %357 = load %struct.l64781_state*, %struct.l64781_state** %6, align 8
  %358 = load i32, i32* %10, align 4
  %359 = and i32 %358, 255
  %360 = call i32 @l64781_writereg(%struct.l64781_state* %357, i32 27, i32 %359)
  %361 = load %struct.l64781_state*, %struct.l64781_state** %6, align 8
  %362 = load i32, i32* %10, align 4
  %363 = ashr i32 %362, 8
  %364 = and i32 %363, 255
  %365 = call i32 @l64781_writereg(%struct.l64781_state* %361, i32 28, i32 %364)
  %366 = load %struct.l64781_state*, %struct.l64781_state** %6, align 8
  %367 = load i32, i32* %10, align 4
  %368 = ashr i32 %367, 16
  %369 = and i32 %368, 127
  %370 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %371 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %370, i32 0, i32 0
  %372 = load i64, i64* %371, align 8
  %373 = load i64, i64* @INVERSION_ON, align 8
  %374 = icmp eq i64 %372, %373
  %375 = zext i1 %374 to i64
  %376 = select i1 %374, i32 128, i32 0
  %377 = or i32 %369, %376
  %378 = call i32 @l64781_writereg(%struct.l64781_state* %366, i32 29, i32 %377)
  %379 = load %struct.l64781_state*, %struct.l64781_state** %6, align 8
  %380 = load i32, i32* %8, align 4
  %381 = and i32 %380, 255
  %382 = call i32 @l64781_writereg(%struct.l64781_state* %379, i32 34, i32 %381)
  %383 = load %struct.l64781_state*, %struct.l64781_state** %6, align 8
  %384 = load i32, i32* %8, align 4
  %385 = ashr i32 %384, 8
  %386 = and i32 %385, 63
  %387 = call i32 @l64781_writereg(%struct.l64781_state* %383, i32 35, i32 %386)
  %388 = load %struct.l64781_state*, %struct.l64781_state** %6, align 8
  %389 = call i32 @l64781_readreg(%struct.l64781_state* %388, i32 0)
  %390 = load %struct.l64781_state*, %struct.l64781_state** %6, align 8
  %391 = call i32 @l64781_readreg(%struct.l64781_state* %390, i32 1)
  %392 = load %struct.l64781_state*, %struct.l64781_state** %6, align 8
  %393 = call i32 @apply_tps(%struct.l64781_state* %392)
  store i32 0, i32* %3, align 4
  br label %394

394:                                              ; preds = %312, %217, %202, %187, %172, %151, %112, %79, %70
  %395 = load i32, i32* %3, align 4
  ret i32 %395
}

declare dso_local i32 @l64781_writereg(%struct.l64781_state*, i32, i32) #1

declare dso_local i32 @reset_afc(%struct.l64781_state*) #1

declare dso_local i32 @l64781_readreg(%struct.l64781_state*, i32) #1

declare dso_local i32 @apply_tps(%struct.l64781_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
