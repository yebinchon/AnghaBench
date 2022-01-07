; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_processor_idle.c_acpi_processor_setup_cpuidle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_processor_idle.c_acpi_processor_setup_cpuidle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.acpi_processor = type { %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i64, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.acpi_processor_cx*, %struct.cpuidle_device }
%struct.acpi_processor_cx = type { i32, i32, i32, i32, i32, i32 }
%struct.cpuidle_device = type { i32, %struct.cpuidle_state*, %struct.cpuidle_state*, i32 }
%struct.cpuidle_state = type { i8*, i8*, i32, i32, i8*, i64, i32 }

@CPUIDLE_DRIVER_STATE_START = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CPUIDLE_STATE_MAX = common dso_local global i32 0, align 4
@max_cstate = common dso_local global i32 0, align 4
@ACPI_PROCESSOR_MAX_POWER = common dso_local global i32 0, align 4
@CPUIDLE_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"C%d\00", align 1
@CPUIDLE_DESC_LEN = common dso_local global i32 0, align 4
@latency_factor = common dso_local global i32 0, align 4
@CPUIDLE_FLAG_SHALLOW = common dso_local global i64 0, align 8
@ACPI_CSTATE_FFH = common dso_local global i32 0, align 4
@CPUIDLE_FLAG_TIME_VALID = common dso_local global i64 0, align 8
@acpi_idle_enter_c1 = common dso_local global i8* null, align 8
@CPUIDLE_FLAG_BALANCED = common dso_local global i64 0, align 8
@acpi_idle_enter_simple = common dso_local global i8* null, align 8
@CPUIDLE_FLAG_DEEP = common dso_local global i64 0, align 8
@CPUIDLE_FLAG_CHECK_BM = common dso_local global i64 0, align 8
@acpi_idle_enter_bm = common dso_local global i8* null, align 8
@ACPI_FADT_C2_MP_SUPPORTED = common dso_local global i32 0, align 4
@acpi_gbl_FADT = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_processor*)* @acpi_processor_setup_cpuidle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_processor_setup_cpuidle(%struct.acpi_processor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_processor*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.acpi_processor_cx*, align 8
  %7 = alloca %struct.cpuidle_state*, align 8
  %8 = alloca %struct.cpuidle_device*, align 8
  store %struct.acpi_processor* %0, %struct.acpi_processor** %3, align 8
  %9 = load i32, i32* @CPUIDLE_DRIVER_STATE_START, align 4
  store i32 %9, i32* %5, align 4
  %10 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %11 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  store %struct.cpuidle_device* %12, %struct.cpuidle_device** %8, align 8
  %13 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %14 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %227

21:                                               ; preds = %1
  %22 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %23 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %227

30:                                               ; preds = %21
  %31 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %32 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.cpuidle_device*, %struct.cpuidle_device** %8, align 8
  %35 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 8
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %59, %30
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @CPUIDLE_STATE_MAX, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %62

40:                                               ; preds = %36
  %41 = load %struct.cpuidle_device*, %struct.cpuidle_device** %8, align 8
  %42 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %41, i32 0, i32 2
  %43 = load %struct.cpuidle_state*, %struct.cpuidle_state** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %43, i64 %45
  %47 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  store i8 0, i8* %49, align 1
  %50 = load %struct.cpuidle_device*, %struct.cpuidle_device** %8, align 8
  %51 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %50, i32 0, i32 2
  %52 = load %struct.cpuidle_state*, %struct.cpuidle_state** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %52, i64 %54
  %56 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  store i8 0, i8* %58, align 1
  br label %59

59:                                               ; preds = %40
  %60 = load i32, i32* %4, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %4, align 4
  br label %36

62:                                               ; preds = %36
  %63 = load i32, i32* @max_cstate, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i32 1, i32* @max_cstate, align 4
  br label %66

66:                                               ; preds = %65, %62
  store i32 1, i32* %4, align 4
  br label %67

67:                                               ; preds = %214, %66
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @ACPI_PROCESSOR_MAX_POWER, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @max_cstate, align 4
  %74 = icmp sle i32 %72, %73
  br label %75

75:                                               ; preds = %71, %67
  %76 = phi i1 [ false, %67 ], [ %74, %71 ]
  br i1 %76, label %77, label %217

77:                                               ; preds = %75
  %78 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %79 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %80, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %81, i64 %83
  store %struct.acpi_processor_cx* %84, %struct.acpi_processor_cx** %6, align 8
  %85 = load %struct.cpuidle_device*, %struct.cpuidle_device** %8, align 8
  %86 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %85, i32 0, i32 2
  %87 = load %struct.cpuidle_state*, %struct.cpuidle_state** %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %87, i64 %89
  store %struct.cpuidle_state* %90, %struct.cpuidle_state** %7, align 8
  %91 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %6, align 8
  %92 = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %77
  br label %214

96:                                               ; preds = %77
  %97 = load %struct.cpuidle_state*, %struct.cpuidle_state** %7, align 8
  %98 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %6, align 8
  %99 = call i32 @cpuidle_set_statedata(%struct.cpuidle_state* %97, %struct.acpi_processor_cx* %98)
  %100 = load %struct.cpuidle_state*, %struct.cpuidle_state** %7, align 8
  %101 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = load i32, i32* @CPUIDLE_NAME_LEN, align 4
  %104 = load i32, i32* %4, align 4
  %105 = call i32 @snprintf(i8* %102, i32 %103, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %104)
  %106 = load %struct.cpuidle_state*, %struct.cpuidle_state** %7, align 8
  %107 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %106, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  %109 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %6, align 8
  %110 = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @CPUIDLE_DESC_LEN, align 4
  %113 = call i32 @strncpy(i8* %108, i32 %111, i32 %112)
  %114 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %6, align 8
  %115 = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.cpuidle_state*, %struct.cpuidle_state** %7, align 8
  %118 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 8
  %119 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %6, align 8
  %120 = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @latency_factor, align 4
  %123 = mul nsw i32 %121, %122
  %124 = load %struct.cpuidle_state*, %struct.cpuidle_state** %7, align 8
  %125 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %124, i32 0, i32 3
  store i32 %123, i32* %125, align 4
  %126 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %6, align 8
  %127 = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.cpuidle_state*, %struct.cpuidle_state** %7, align 8
  %130 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %129, i32 0, i32 6
  store i32 %128, i32* %130, align 8
  %131 = load %struct.cpuidle_state*, %struct.cpuidle_state** %7, align 8
  %132 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %131, i32 0, i32 5
  store i64 0, i64* %132, align 8
  %133 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %6, align 8
  %134 = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  switch i32 %135, label %206 [
    i32 130, label %136
    i32 129, label %160
    i32 128, label %177
  ]

136:                                              ; preds = %96
  %137 = load i64, i64* @CPUIDLE_FLAG_SHALLOW, align 8
  %138 = load %struct.cpuidle_state*, %struct.cpuidle_state** %7, align 8
  %139 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %138, i32 0, i32 5
  %140 = load i64, i64* %139, align 8
  %141 = or i64 %140, %137
  store i64 %141, i64* %139, align 8
  %142 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %6, align 8
  %143 = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @ACPI_CSTATE_FFH, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %153

147:                                              ; preds = %136
  %148 = load i64, i64* @CPUIDLE_FLAG_TIME_VALID, align 8
  %149 = load %struct.cpuidle_state*, %struct.cpuidle_state** %7, align 8
  %150 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %149, i32 0, i32 5
  %151 = load i64, i64* %150, align 8
  %152 = or i64 %151, %148
  store i64 %152, i64* %150, align 8
  br label %153

153:                                              ; preds = %147, %136
  %154 = load i8*, i8** @acpi_idle_enter_c1, align 8
  %155 = load %struct.cpuidle_state*, %struct.cpuidle_state** %7, align 8
  %156 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %155, i32 0, i32 4
  store i8* %154, i8** %156, align 8
  %157 = load %struct.cpuidle_state*, %struct.cpuidle_state** %7, align 8
  %158 = load %struct.cpuidle_device*, %struct.cpuidle_device** %8, align 8
  %159 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %158, i32 0, i32 1
  store %struct.cpuidle_state* %157, %struct.cpuidle_state** %159, align 8
  br label %206

160:                                              ; preds = %96
  %161 = load i64, i64* @CPUIDLE_FLAG_BALANCED, align 8
  %162 = load %struct.cpuidle_state*, %struct.cpuidle_state** %7, align 8
  %163 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %162, i32 0, i32 5
  %164 = load i64, i64* %163, align 8
  %165 = or i64 %164, %161
  store i64 %165, i64* %163, align 8
  %166 = load i64, i64* @CPUIDLE_FLAG_TIME_VALID, align 8
  %167 = load %struct.cpuidle_state*, %struct.cpuidle_state** %7, align 8
  %168 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %167, i32 0, i32 5
  %169 = load i64, i64* %168, align 8
  %170 = or i64 %169, %166
  store i64 %170, i64* %168, align 8
  %171 = load i8*, i8** @acpi_idle_enter_simple, align 8
  %172 = load %struct.cpuidle_state*, %struct.cpuidle_state** %7, align 8
  %173 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %172, i32 0, i32 4
  store i8* %171, i8** %173, align 8
  %174 = load %struct.cpuidle_state*, %struct.cpuidle_state** %7, align 8
  %175 = load %struct.cpuidle_device*, %struct.cpuidle_device** %8, align 8
  %176 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %175, i32 0, i32 1
  store %struct.cpuidle_state* %174, %struct.cpuidle_state** %176, align 8
  br label %206

177:                                              ; preds = %96
  %178 = load i64, i64* @CPUIDLE_FLAG_DEEP, align 8
  %179 = load %struct.cpuidle_state*, %struct.cpuidle_state** %7, align 8
  %180 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %179, i32 0, i32 5
  %181 = load i64, i64* %180, align 8
  %182 = or i64 %181, %178
  store i64 %182, i64* %180, align 8
  %183 = load i64, i64* @CPUIDLE_FLAG_TIME_VALID, align 8
  %184 = load %struct.cpuidle_state*, %struct.cpuidle_state** %7, align 8
  %185 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %184, i32 0, i32 5
  %186 = load i64, i64* %185, align 8
  %187 = or i64 %186, %183
  store i64 %187, i64* %185, align 8
  %188 = load i64, i64* @CPUIDLE_FLAG_CHECK_BM, align 8
  %189 = load %struct.cpuidle_state*, %struct.cpuidle_state** %7, align 8
  %190 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %189, i32 0, i32 5
  %191 = load i64, i64* %190, align 8
  %192 = or i64 %191, %188
  store i64 %192, i64* %190, align 8
  %193 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %194 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %177
  %199 = load i8*, i8** @acpi_idle_enter_bm, align 8
  br label %202

200:                                              ; preds = %177
  %201 = load i8*, i8** @acpi_idle_enter_simple, align 8
  br label %202

202:                                              ; preds = %200, %198
  %203 = phi i8* [ %199, %198 ], [ %201, %200 ]
  %204 = load %struct.cpuidle_state*, %struct.cpuidle_state** %7, align 8
  %205 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %204, i32 0, i32 4
  store i8* %203, i8** %205, align 8
  br label %206

206:                                              ; preds = %96, %202, %160, %153
  %207 = load i32, i32* %5, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %5, align 4
  %209 = load i32, i32* %5, align 4
  %210 = load i32, i32* @CPUIDLE_STATE_MAX, align 4
  %211 = icmp eq i32 %209, %210
  br i1 %211, label %212, label %213

212:                                              ; preds = %206
  br label %217

213:                                              ; preds = %206
  br label %214

214:                                              ; preds = %213, %95
  %215 = load i32, i32* %4, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %4, align 4
  br label %67

217:                                              ; preds = %212, %75
  %218 = load i32, i32* %5, align 4
  %219 = load %struct.cpuidle_device*, %struct.cpuidle_device** %8, align 8
  %220 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %219, i32 0, i32 0
  store i32 %218, i32* %220, align 8
  %221 = load i32, i32* %5, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %226, label %223

223:                                              ; preds = %217
  %224 = load i32, i32* @EINVAL, align 4
  %225 = sub nsw i32 0, %224
  store i32 %225, i32* %2, align 4
  br label %227

226:                                              ; preds = %217
  store i32 0, i32* %2, align 4
  br label %227

227:                                              ; preds = %226, %223, %27, %18
  %228 = load i32, i32* %2, align 4
  ret i32 %228
}

declare dso_local i32 @cpuidle_set_statedata(%struct.cpuidle_state*, %struct.acpi_processor_cx*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @strncpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
