; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sdvo.c_intel_sdvo_create_preferred_input_timing.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_sdvo.c_intel_sdvo_create_preferred_input_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_sdvo = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64, i64 }
%struct.intel_sdvo_preferred_input_timing_args = type { i32, i64, i64, i64, i64 }

@SDVO_CMD_CREATE_PREFERRED_INPUT_TIMING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_sdvo*, i64, i64, i64)* @intel_sdvo_create_preferred_input_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_sdvo_create_preferred_input_timing(%struct.intel_sdvo* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.intel_sdvo*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.intel_sdvo_preferred_input_timing_args, align 8
  store %struct.intel_sdvo* %0, %struct.intel_sdvo** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = call i32 @memset(%struct.intel_sdvo_preferred_input_timing_args* %9, i32 0, i32 40)
  %11 = load i64, i64* %6, align 8
  %12 = getelementptr inbounds %struct.intel_sdvo_preferred_input_timing_args, %struct.intel_sdvo_preferred_input_timing_args* %9, i32 0, i32 4
  store i64 %11, i64* %12, align 8
  %13 = load i64, i64* %7, align 8
  %14 = getelementptr inbounds %struct.intel_sdvo_preferred_input_timing_args, %struct.intel_sdvo_preferred_input_timing_args* %9, i32 0, i32 3
  store i64 %13, i64* %14, align 8
  %15 = load i64, i64* %8, align 8
  %16 = getelementptr inbounds %struct.intel_sdvo_preferred_input_timing_args, %struct.intel_sdvo_preferred_input_timing_args* %9, i32 0, i32 2
  store i64 %15, i64* %16, align 8
  %17 = getelementptr inbounds %struct.intel_sdvo_preferred_input_timing_args, %struct.intel_sdvo_preferred_input_timing_args* %9, i32 0, i32 1
  store i64 0, i64* %17, align 8
  %18 = load %struct.intel_sdvo*, %struct.intel_sdvo** %5, align 8
  %19 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %4
  %23 = load %struct.intel_sdvo*, %struct.intel_sdvo** %5, align 8
  %24 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %7, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %38, label %30

30:                                               ; preds = %22
  %31 = load %struct.intel_sdvo*, %struct.intel_sdvo** %5, align 8
  %32 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %8, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %30, %22
  %39 = getelementptr inbounds %struct.intel_sdvo_preferred_input_timing_args, %struct.intel_sdvo_preferred_input_timing_args* %9, i32 0, i32 0
  store i32 1, i32* %39, align 8
  br label %40

40:                                               ; preds = %38, %30, %4
  %41 = load %struct.intel_sdvo*, %struct.intel_sdvo** %5, align 8
  %42 = load i32, i32* @SDVO_CMD_CREATE_PREFERRED_INPUT_TIMING, align 4
  %43 = call i32 @intel_sdvo_set_value(%struct.intel_sdvo* %41, i32 %42, %struct.intel_sdvo_preferred_input_timing_args* %9, i32 40)
  ret i32 %43
}

declare dso_local i32 @memset(%struct.intel_sdvo_preferred_input_timing_args*, i32, i32) #1

declare dso_local i32 @intel_sdvo_set_value(%struct.intel_sdvo*, i32, %struct.intel_sdvo_preferred_input_timing_args*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
