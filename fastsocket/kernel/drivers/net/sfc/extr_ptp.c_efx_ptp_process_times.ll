; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_ptp.c_efx_ptp_process_times.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_ptp.c_efx_ptp_process_times.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, %struct.efx_ptp_data* }
%struct.efx_ptp_data = type { i64, i64, i32, %struct.pps_event_time, %struct.TYPE_4__* }
%struct.pps_event_time = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }
%struct.TYPE_4__ = type { i64, i64, i32, i64 }
%struct.timespec = type { i32, i64 }

@MC_CMD_PTP_OUT_SYNCHRONIZE_TIMESET_LEN = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@MIN_SYNCHRONISATION_NS = common dso_local global i32 0, align 4
@MAX_SYNCHRONISATION_NS = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"PTP no suitable synchronisations %dns\0A\00", align 1
@MC_NANOSECOND_MASK = common dso_local global i32 0, align 4
@MC_NANOSECOND_BITS = common dso_local global i32 0, align 4
@MC_SECOND_MASK = common dso_local global i32 0, align 4
@hw = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"PTP bad synchronisation seconds\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*, i32*, i64, %struct.pps_event_time*)* @efx_ptp_process_times to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_ptp_process_times(%struct.efx_nic* %0, i32* %1, i64 %2, %struct.pps_event_time* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.efx_nic*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.pps_event_time*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.efx_ptp_data*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.timespec, align 8
  %19 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.pps_event_time* %3, %struct.pps_event_time** %9, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* @MC_CMD_PTP_OUT_SYNCHRONIZE_TIMESET_LEN, align 8
  %22 = udiv i64 %20, %21
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %10, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %24 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %25 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %24, i32 0, i32 1
  %26 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %25, align 8
  store %struct.efx_ptp_data* %26, %struct.efx_ptp_data** %15, align 8
  %27 = load i32, i32* %10, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %4
  %30 = load i32, i32* @EAGAIN, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %244

32:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %33

33:                                               ; preds = %49, %32
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %33
  %38 = load i32*, i32** %7, align 8
  %39 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %15, align 8
  %40 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %39, i32 0, i32 4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load i32, i32* %11, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %43
  %45 = call i32 @efx_ptp_read_timeset(i32* %38, %struct.TYPE_4__* %44)
  %46 = load i64, i64* @MC_CMD_PTP_OUT_SYNCHRONIZE_TIMESET_LEN, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 %46
  store i32* %48, i32** %7, align 8
  br label %49

49:                                               ; preds = %37
  %50 = load i32, i32* %11, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %11, align 4
  br label %33

52:                                               ; preds = %33
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %53

53:                                               ; preds = %119, %52
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp ult i32 %54, %55
  br i1 %56, label %57, label %122

57:                                               ; preds = %53
  %58 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %15, align 8
  %59 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %58, i32 0, i32 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = load i32, i32* %11, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %15, align 8
  %67 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %66, i32 0, i32 4
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = load i32, i32* %11, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp sgt i64 %65, %73
  br i1 %74, label %75, label %118

75:                                               ; preds = %57
  %76 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %15, align 8
  %77 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %76, i32 0, i32 4
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = load i32, i32* %11, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %15, align 8
  %85 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %84, i32 0, i32 4
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = load i32, i32* %11, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = sub nsw i64 %83, %91
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %19, align 4
  %94 = load i32, i32* %19, align 4
  %95 = load i32, i32* @MIN_SYNCHRONISATION_NS, align 4
  %96 = icmp uge i32 %94, %95
  br i1 %96, label %97, label %117

97:                                               ; preds = %75
  %98 = load i32, i32* %19, align 4
  %99 = load i32, i32* @MAX_SYNCHRONISATION_NS, align 4
  %100 = icmp ult i32 %98, %99
  br i1 %100, label %101, label %117

101:                                              ; preds = %97
  %102 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %15, align 8
  %103 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %102, i32 0, i32 4
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = load i32, i32* %11, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i32, i32* %12, align 4
  %111 = zext i32 %110 to i64
  %112 = add nsw i64 %111, %109
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %12, align 4
  %114 = load i32, i32* %13, align 4
  %115 = add i32 %114, 1
  store i32 %115, i32* %13, align 4
  %116 = load i32, i32* %11, align 4
  store i32 %116, i32* %14, align 4
  br label %117

117:                                              ; preds = %101, %97, %75
  br label %118

118:                                              ; preds = %117, %57
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %11, align 4
  %121 = add i32 %120, 1
  store i32 %121, i32* %11, align 4
  br label %53

122:                                              ; preds = %53
  %123 = load i32, i32* %13, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %137

125:                                              ; preds = %122
  %126 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %127 = load i32, i32* @drv, align 4
  %128 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %129 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %15, align 8
  %132 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = call i32 (%struct.efx_nic*, i32, i32, i8*, ...) @netif_warn(%struct.efx_nic* %126, i32 %127, i32 %130, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %133)
  %135 = load i32, i32* @EAGAIN, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %5, align 4
  br label %244

137:                                              ; preds = %122
  %138 = load i32, i32* %12, align 4
  %139 = load i32, i32* %13, align 4
  %140 = call i64 @DIV_ROUND_UP(i32 %138, i32 %139)
  %141 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %15, align 8
  %142 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %141, i32 0, i32 1
  store i64 %140, i64* %142, align 8
  %143 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %15, align 8
  %144 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %155

147:                                              ; preds = %137
  %148 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %15, align 8
  %149 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %15, align 8
  %152 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = icmp slt i64 %150, %153
  br i1 %154, label %155, label %163

155:                                              ; preds = %147, %137
  %156 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %15, align 8
  %157 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %156, i32 0, i32 2
  store i32 1, i32* %157, align 8
  %158 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %15, align 8
  %159 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %15, align 8
  %162 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %161, i32 0, i32 0
  store i64 %160, i64* %162, align 8
  br label %163

163:                                              ; preds = %155, %147
  %164 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %15, align 8
  %165 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %164, i32 0, i32 4
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %165, align 8
  %167 = load i32, i32* %14, align 4
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 3
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.pps_event_time*, %struct.pps_event_time** %9, align 8
  %173 = getelementptr inbounds %struct.pps_event_time, %struct.pps_event_time* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = add nsw i64 %171, %175
  %177 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %15, align 8
  %178 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %177, i32 0, i32 4
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %178, align 8
  %180 = load i32, i32* %14, align 4
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @MC_NANOSECOND_MASK, align 4
  %186 = and i32 %184, %185
  %187 = sext i32 %186 to i64
  %188 = sub nsw i64 %176, %187
  %189 = getelementptr inbounds %struct.timespec, %struct.timespec* %18, i32 0, i32 1
  store i64 %188, i64* %189, align 8
  %190 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %15, align 8
  %191 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %190, i32 0, i32 4
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %191, align 8
  %193 = load i32, i32* %14, align 4
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* @MC_NANOSECOND_BITS, align 4
  %199 = ashr i32 %197, %198
  store i32 %199, i32* %17, align 4
  %200 = load %struct.pps_event_time*, %struct.pps_event_time** %9, align 8
  %201 = getelementptr inbounds %struct.pps_event_time, %struct.pps_event_time* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @MC_SECOND_MASK, align 4
  %205 = and i32 %203, %204
  store i32 %205, i32* %16, align 4
  %206 = load i32, i32* %17, align 4
  %207 = load i32, i32* %16, align 4
  %208 = icmp ne i32 %206, %207
  br i1 %208, label %209, label %228

209:                                              ; preds = %163
  %210 = load i32, i32* %17, align 4
  %211 = add nsw i32 %210, 1
  %212 = load i32, i32* @MC_SECOND_MASK, align 4
  %213 = and i32 %211, %212
  %214 = load i32, i32* %16, align 4
  %215 = icmp ne i32 %213, %214
  br i1 %215, label %216, label %225

216:                                              ; preds = %209
  %217 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %218 = load i32, i32* @hw, align 4
  %219 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %220 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = call i32 (%struct.efx_nic*, i32, i32, i8*, ...) @netif_warn(%struct.efx_nic* %217, i32 %218, i32 %221, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %223 = load i32, i32* @EAGAIN, align 4
  %224 = sub nsw i32 0, %223
  store i32 %224, i32* %5, align 4
  br label %244

225:                                              ; preds = %209
  %226 = getelementptr inbounds %struct.timespec, %struct.timespec* %18, i32 0, i32 0
  store i32 1, i32* %226, align 8
  br label %227

227:                                              ; preds = %225
  br label %230

228:                                              ; preds = %163
  %229 = getelementptr inbounds %struct.timespec, %struct.timespec* %18, i32 0, i32 0
  store i32 0, i32* %229, align 8
  br label %230

230:                                              ; preds = %228, %227
  %231 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %15, align 8
  %232 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %231, i32 0, i32 3
  %233 = load %struct.pps_event_time*, %struct.pps_event_time** %9, align 8
  %234 = bitcast %struct.pps_event_time* %232 to i8*
  %235 = bitcast %struct.pps_event_time* %233 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %234, i8* align 8 %235, i64 16, i1 false)
  %236 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %15, align 8
  %237 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %236, i32 0, i32 3
  %238 = bitcast %struct.timespec* %18 to { i32, i64 }*
  %239 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %238, i32 0, i32 1
  %242 = load i64, i64* %241, align 8
  %243 = call i32 @pps_sub_ts(%struct.pps_event_time* %237, i32 %240, i64 %242)
  store i32 0, i32* %5, align 4
  br label %244

244:                                              ; preds = %230, %216, %125, %29
  %245 = load i32, i32* %5, align 4
  ret i32 %245
}

declare dso_local i32 @efx_ptp_read_timeset(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @netif_warn(%struct.efx_nic*, i32, i32, i8*, ...) #1

declare dso_local i64 @DIV_ROUND_UP(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pps_sub_ts(%struct.pps_event_time*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
