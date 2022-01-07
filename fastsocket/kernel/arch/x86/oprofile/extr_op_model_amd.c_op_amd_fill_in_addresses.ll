; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/oprofile/extr_op_model_amd.c_op_amd_fill_in_addresses.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/oprofile/extr_op_model_amd.c_op_amd_fill_in_addresses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.op_msrs = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@num_counters = common dso_local global i32 0, align 4
@MSR_K7_PERFCTR0 = common dso_local global i64 0, align 8
@MSR_K7_EVNTSEL0 = common dso_local global i64 0, align 8
@NUM_COUNTERS_F15H = common dso_local global i32 0, align 4
@MSR_F15H_PERF_CTR = common dso_local global i64 0, align 8
@MSR_F15H_PERF_CTL = common dso_local global i64 0, align 8
@counter_config = common dso_local global %struct.TYPE_6__* null, align 8
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.op_msrs*)* @op_amd_fill_in_addresses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @op_amd_fill_in_addresses(%struct.op_msrs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.op_msrs*, align 8
  %4 = alloca i32, align 4
  store %struct.op_msrs* %0, %struct.op_msrs** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %99, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @num_counters, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %102

9:                                                ; preds = %5
  %10 = load i64, i64* @MSR_K7_PERFCTR0, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = add nsw i64 %10, %12
  %14 = call i32 @reserve_perfctr_nmi(i64 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %9
  br label %83

17:                                               ; preds = %9
  %18 = load i64, i64* @MSR_K7_EVNTSEL0, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %18, %20
  %22 = call i32 @reserve_evntsel_nmi(i64 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %17
  %25 = load i64, i64* @MSR_K7_PERFCTR0, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %25, %27
  %29 = call i32 @release_perfctr_nmi(i64 %28)
  br label %83

30:                                               ; preds = %17
  %31 = load i32, i32* @num_counters, align 4
  %32 = load i32, i32* @NUM_COUNTERS_F15H, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %59

34:                                               ; preds = %30
  %35 = load i64, i64* @MSR_F15H_PERF_CTR, align 8
  %36 = load i32, i32* %4, align 4
  %37 = shl i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %35, %38
  %40 = load %struct.op_msrs*, %struct.op_msrs** %3, align 8
  %41 = getelementptr inbounds %struct.op_msrs, %struct.op_msrs* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  store i64 %39, i64* %46, align 8
  %47 = load i64, i64* @MSR_F15H_PERF_CTL, align 8
  %48 = load i32, i32* %4, align 4
  %49 = shl i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %47, %50
  %52 = load %struct.op_msrs*, %struct.op_msrs** %3, align 8
  %53 = getelementptr inbounds %struct.op_msrs, %struct.op_msrs* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  store i64 %51, i64* %58, align 8
  br label %82

59:                                               ; preds = %30
  %60 = load i64, i64* @MSR_K7_EVNTSEL0, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %60, %62
  %64 = load %struct.op_msrs*, %struct.op_msrs** %3, align 8
  %65 = getelementptr inbounds %struct.op_msrs, %struct.op_msrs* %64, i32 0, i32 1
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  store i64 %63, i64* %70, align 8
  %71 = load i64, i64* @MSR_K7_PERFCTR0, align 8
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %71, %73
  %75 = load %struct.op_msrs*, %struct.op_msrs** %3, align 8
  %76 = getelementptr inbounds %struct.op_msrs, %struct.op_msrs* %75, i32 0, i32 0
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  store i64 %74, i64* %81, align 8
  br label %82

82:                                               ; preds = %59, %34
  br label %99

83:                                               ; preds = %24, %16
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** @counter_config, align 8
  %85 = load i32, i32* %4, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %83
  br label %99

92:                                               ; preds = %83
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @op_x86_warn_reserved(i32 %93)
  %95 = load %struct.op_msrs*, %struct.op_msrs** %3, align 8
  %96 = call i32 @op_amd_shutdown(%struct.op_msrs* %95)
  %97 = load i32, i32* @EBUSY, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %2, align 4
  br label %103

99:                                               ; preds = %91, %82
  %100 = load i32, i32* %4, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %4, align 4
  br label %5

102:                                              ; preds = %5
  store i32 0, i32* %2, align 4
  br label %103

103:                                              ; preds = %102, %92
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i32 @reserve_perfctr_nmi(i64) #1

declare dso_local i32 @reserve_evntsel_nmi(i64) #1

declare dso_local i32 @release_perfctr_nmi(i64) #1

declare dso_local i32 @op_x86_warn_reserved(i32) #1

declare dso_local i32 @op_amd_shutdown(%struct.op_msrs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
