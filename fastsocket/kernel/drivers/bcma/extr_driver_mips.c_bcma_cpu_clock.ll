; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bcma/extr_driver_mips.c_bcma_cpu_clock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bcma/extr_driver_mips.c_bcma_cpu_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_drv_mips = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.bcma_bus* }
%struct.bcma_bus = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@BCMA_CC_CAP_PMU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"No PMU available, need this to get the cpu clock\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bcma_cpu_clock(%struct.bcma_drv_mips* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bcma_drv_mips*, align 8
  %4 = alloca %struct.bcma_bus*, align 8
  store %struct.bcma_drv_mips* %0, %struct.bcma_drv_mips** %3, align 8
  %5 = load %struct.bcma_drv_mips*, %struct.bcma_drv_mips** %3, align 8
  %6 = getelementptr inbounds %struct.bcma_drv_mips, %struct.bcma_drv_mips* %5, i32 0, i32 0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.bcma_bus*, %struct.bcma_bus** %8, align 8
  store %struct.bcma_bus* %9, %struct.bcma_bus** %4, align 8
  %10 = load %struct.bcma_bus*, %struct.bcma_bus** %4, align 8
  %11 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @BCMA_CC_CAP_PMU, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load %struct.bcma_bus*, %struct.bcma_bus** %4, align 8
  %19 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %18, i32 0, i32 0
  %20 = call i32 @bcma_pmu_get_cpu_clock(%struct.TYPE_4__* %19)
  store i32 %20, i32* %2, align 4
  br label %24

21:                                               ; preds = %1
  %22 = load %struct.bcma_bus*, %struct.bcma_bus** %4, align 8
  %23 = call i32 @bcma_err(%struct.bcma_bus* %22, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %21, %17
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @bcma_pmu_get_cpu_clock(%struct.TYPE_4__*) #1

declare dso_local i32 @bcma_err(%struct.bcma_bus*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
