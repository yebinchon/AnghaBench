; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_intel_get_cxsr_latency.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_pm.c_intel_get_cxsr_latency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxsr_latency = type { i32, i32, i32, i32 }

@cxsr_latency_table = common dso_local global %struct.cxsr_latency* null, align 8
@.str = private unnamed_addr constant [37 x i8] c"Unknown FSB/MEM found, disable CxSR\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cxsr_latency* (i32, i32, i32, i32)* @intel_get_cxsr_latency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cxsr_latency* @intel_get_cxsr_latency(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.cxsr_latency*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cxsr_latency*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* %9, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %4
  store %struct.cxsr_latency* null, %struct.cxsr_latency** %5, align 8
  br label %60

18:                                               ; preds = %14
  store i32 0, i32* %11, align 4
  br label %19

19:                                               ; preds = %55, %18
  %20 = load i32, i32* %11, align 4
  %21 = load %struct.cxsr_latency*, %struct.cxsr_latency** @cxsr_latency_table, align 8
  %22 = call i32 @ARRAY_SIZE(%struct.cxsr_latency* %21)
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %58

24:                                               ; preds = %19
  %25 = load %struct.cxsr_latency*, %struct.cxsr_latency** @cxsr_latency_table, align 8
  %26 = load i32, i32* %11, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.cxsr_latency, %struct.cxsr_latency* %25, i64 %27
  store %struct.cxsr_latency* %28, %struct.cxsr_latency** %10, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.cxsr_latency*, %struct.cxsr_latency** %10, align 8
  %31 = getelementptr inbounds %struct.cxsr_latency, %struct.cxsr_latency* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %29, %32
  br i1 %33, label %34, label %54

34:                                               ; preds = %24
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.cxsr_latency*, %struct.cxsr_latency** %10, align 8
  %37 = getelementptr inbounds %struct.cxsr_latency, %struct.cxsr_latency* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %35, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %34
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.cxsr_latency*, %struct.cxsr_latency** %10, align 8
  %43 = getelementptr inbounds %struct.cxsr_latency, %struct.cxsr_latency* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %41, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %40
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.cxsr_latency*, %struct.cxsr_latency** %10, align 8
  %49 = getelementptr inbounds %struct.cxsr_latency, %struct.cxsr_latency* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %47, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load %struct.cxsr_latency*, %struct.cxsr_latency** %10, align 8
  store %struct.cxsr_latency* %53, %struct.cxsr_latency** %5, align 8
  br label %60

54:                                               ; preds = %46, %40, %34, %24
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %11, align 4
  br label %19

58:                                               ; preds = %19
  %59 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store %struct.cxsr_latency* null, %struct.cxsr_latency** %5, align 8
  br label %60

60:                                               ; preds = %58, %52, %17
  %61 = load %struct.cxsr_latency*, %struct.cxsr_latency** %5, align 8
  ret %struct.cxsr_latency* %61
}

declare dso_local i32 @ARRAY_SIZE(%struct.cxsr_latency*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
