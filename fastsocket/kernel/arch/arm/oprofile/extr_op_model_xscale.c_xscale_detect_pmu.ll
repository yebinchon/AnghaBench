; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/oprofile/extr_op_model_xscale.c_xscale_detect_pmu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/oprofile/extr_op_model_xscale.c_xscale_detect_pmu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@CPUID_ID = common dso_local global i32 0, align 4
@pmu_parms = common dso_local global %struct.TYPE_4__* null, align 8
@PMU_XSC1 = common dso_local global i64 0, align 8
@pmu = common dso_local global %struct.TYPE_4__* null, align 8
@PMU_XSC2 = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@op_xscale_spec = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str = private unnamed_addr constant [36 x i8] c"xscale_detect_pmu: detected %s PMU\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @xscale_detect_pmu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xscale_detect_pmu() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %3 = load i32, i32* @CPUID_ID, align 4
  %4 = call i32 @read_cpuid(i32 %3)
  %5 = ashr i32 %4, 13
  %6 = and i32 %5, 7
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  switch i32 %7, label %16 [
    i32 1, label %8
    i32 2, label %12
  ]

8:                                                ; preds = %0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pmu_parms, align 8
  %10 = load i64, i64* @PMU_XSC1, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i64 %10
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** @pmu, align 8
  br label %19

12:                                               ; preds = %0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pmu_parms, align 8
  %14 = load i64, i64* @PMU_XSC2, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i64 %14
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** @pmu, align 8
  br label %19

16:                                               ; preds = %0
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %1, align 4
  br label %19

19:                                               ; preds = %16, %12, %8
  %20 = load i32, i32* %1, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %19
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pmu, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @op_xscale_spec, i32 0, i32 1), align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pmu, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @op_xscale_spec, i32 0, i32 0), align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pmu, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %22, %19
  %34 = load i32, i32* %1, align 4
  ret i32 %34
}

declare dso_local i32 @read_cpuid(i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
