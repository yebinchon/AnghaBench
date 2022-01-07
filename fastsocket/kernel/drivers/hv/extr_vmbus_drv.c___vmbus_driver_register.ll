; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_vmbus_drv.c___vmbus_driver_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_vmbus_drv.c___vmbus_driver_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_driver = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8*, i32*, %struct.module*, i32 }
%struct.module = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"registering driver %s\0A\00", align 1
@hv_bus = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__vmbus_driver_register(%struct.hv_driver* %0, %struct.module* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hv_driver*, align 8
  %6 = alloca %struct.module*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.hv_driver* %0, %struct.hv_driver** %5, align 8
  store %struct.module* %1, %struct.module** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.hv_driver*, %struct.hv_driver** %5, align 8
  %10 = getelementptr inbounds %struct.hv_driver, %struct.hv_driver* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @pr_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = call i32 (...) @vmbus_exists()
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %4, align 4
  br label %40

18:                                               ; preds = %3
  %19 = load %struct.hv_driver*, %struct.hv_driver** %5, align 8
  %20 = getelementptr inbounds %struct.hv_driver, %struct.hv_driver* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.hv_driver*, %struct.hv_driver** %5, align 8
  %23 = getelementptr inbounds %struct.hv_driver, %struct.hv_driver* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 3
  store i32 %21, i32* %24, align 8
  %25 = load %struct.module*, %struct.module** %6, align 8
  %26 = load %struct.hv_driver*, %struct.hv_driver** %5, align 8
  %27 = getelementptr inbounds %struct.hv_driver, %struct.hv_driver* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  store %struct.module* %25, %struct.module** %28, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load %struct.hv_driver*, %struct.hv_driver** %5, align 8
  %31 = getelementptr inbounds %struct.hv_driver, %struct.hv_driver* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i8* %29, i8** %32, align 8
  %33 = load %struct.hv_driver*, %struct.hv_driver** %5, align 8
  %34 = getelementptr inbounds %struct.hv_driver, %struct.hv_driver* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store i32* @hv_bus, i32** %35, align 8
  %36 = load %struct.hv_driver*, %struct.hv_driver** %5, align 8
  %37 = getelementptr inbounds %struct.hv_driver, %struct.hv_driver* %36, i32 0, i32 0
  %38 = call i32 @driver_register(%struct.TYPE_2__* %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %18, %16
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @vmbus_exists(...) #1

declare dso_local i32 @driver_register(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
