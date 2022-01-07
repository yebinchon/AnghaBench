; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bcma/extr_main.c_bcma_bus_unregister.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bcma/extr_main.c_bcma_bus_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_bus = type { i32 }
%struct.bcma_device = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Some GPIOs are still in use.\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Can not unregister GPIO driver: %i\0A\00", align 1
@BCMA_CORE_MIPS_74K = common dso_local global i32 0, align 4
@BCMA_CORE_PCIE = common dso_local global i32 0, align 4
@BCMA_CORE_4706_MAC_GBIT_COMMON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bcma_bus_unregister(%struct.bcma_bus* %0) #0 {
  %2 = alloca %struct.bcma_bus*, align 8
  %3 = alloca [3 x %struct.bcma_device*], align 16
  %4 = alloca i32, align 4
  store %struct.bcma_bus* %0, %struct.bcma_bus** %2, align 8
  %5 = load %struct.bcma_bus*, %struct.bcma_bus** %2, align 8
  %6 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %5, i32 0, i32 0
  %7 = call i32 @bcma_gpio_unregister(i32* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @EBUSY, align 4
  %10 = sub nsw i32 0, %9
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.bcma_bus*, %struct.bcma_bus** %2, align 8
  %14 = call i32 (%struct.bcma_bus*, i8*, ...) @bcma_err(%struct.bcma_bus* %13, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %23

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load %struct.bcma_bus*, %struct.bcma_bus** %2, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 (%struct.bcma_bus*, i8*, ...) @bcma_err(%struct.bcma_bus* %19, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %18, %15
  br label %23

23:                                               ; preds = %22, %12
  %24 = load %struct.bcma_bus*, %struct.bcma_bus** %2, align 8
  %25 = load i32, i32* @BCMA_CORE_MIPS_74K, align 4
  %26 = call %struct.bcma_device* @bcma_find_core(%struct.bcma_bus* %24, i32 %25)
  %27 = getelementptr inbounds [3 x %struct.bcma_device*], [3 x %struct.bcma_device*]* %3, i64 0, i64 0
  store %struct.bcma_device* %26, %struct.bcma_device** %27, align 16
  %28 = load %struct.bcma_bus*, %struct.bcma_bus** %2, align 8
  %29 = load i32, i32* @BCMA_CORE_PCIE, align 4
  %30 = call %struct.bcma_device* @bcma_find_core(%struct.bcma_bus* %28, i32 %29)
  %31 = getelementptr inbounds [3 x %struct.bcma_device*], [3 x %struct.bcma_device*]* %3, i64 0, i64 1
  store %struct.bcma_device* %30, %struct.bcma_device** %31, align 8
  %32 = load %struct.bcma_bus*, %struct.bcma_bus** %2, align 8
  %33 = load i32, i32* @BCMA_CORE_4706_MAC_GBIT_COMMON, align 4
  %34 = call %struct.bcma_device* @bcma_find_core(%struct.bcma_bus* %32, i32 %33)
  %35 = getelementptr inbounds [3 x %struct.bcma_device*], [3 x %struct.bcma_device*]* %3, i64 0, i64 2
  store %struct.bcma_device* %34, %struct.bcma_device** %35, align 16
  %36 = load %struct.bcma_bus*, %struct.bcma_bus** %2, align 8
  %37 = call i32 @bcma_unregister_cores(%struct.bcma_bus* %36)
  %38 = getelementptr inbounds [3 x %struct.bcma_device*], [3 x %struct.bcma_device*]* %3, i64 0, i64 2
  %39 = load %struct.bcma_device*, %struct.bcma_device** %38, align 16
  %40 = call i32 @kfree(%struct.bcma_device* %39)
  %41 = getelementptr inbounds [3 x %struct.bcma_device*], [3 x %struct.bcma_device*]* %3, i64 0, i64 1
  %42 = load %struct.bcma_device*, %struct.bcma_device** %41, align 8
  %43 = call i32 @kfree(%struct.bcma_device* %42)
  %44 = getelementptr inbounds [3 x %struct.bcma_device*], [3 x %struct.bcma_device*]* %3, i64 0, i64 0
  %45 = load %struct.bcma_device*, %struct.bcma_device** %44, align 16
  %46 = call i32 @kfree(%struct.bcma_device* %45)
  ret void
}

declare dso_local i32 @bcma_gpio_unregister(i32*) #1

declare dso_local i32 @bcma_err(%struct.bcma_bus*, i8*, ...) #1

declare dso_local %struct.bcma_device* @bcma_find_core(%struct.bcma_bus*, i32) #1

declare dso_local i32 @bcma_unregister_cores(%struct.bcma_bus*) #1

declare dso_local i32 @kfree(%struct.bcma_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
