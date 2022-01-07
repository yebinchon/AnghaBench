; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_wm8350-core.c_wm8350_client_dev_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_wm8350-core.c_wm8350_client_dev_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm8350 = type { i32 }
%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Failed to allocate %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to register %s: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wm8350*, i8*, %struct.platform_device**)* @wm8350_client_dev_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm8350_client_dev_register(%struct.wm8350* %0, i8* %1, %struct.platform_device** %2) #0 {
  %4 = alloca %struct.wm8350*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.platform_device**, align 8
  %7 = alloca i32, align 4
  store %struct.wm8350* %0, %struct.wm8350** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.platform_device** %2, %struct.platform_device*** %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call %struct.platform_device* @platform_device_alloc(i8* %8, i32 -1)
  %10 = load %struct.platform_device**, %struct.platform_device*** %6, align 8
  store %struct.platform_device* %9, %struct.platform_device** %10, align 8
  %11 = load %struct.platform_device**, %struct.platform_device*** %6, align 8
  %12 = icmp eq %struct.platform_device** %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %15 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 (i32, i8*, i8*, ...) @dev_err(i32 %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %17)
  br label %47

19:                                               ; preds = %3
  %20 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %21 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.platform_device**, %struct.platform_device*** %6, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %23, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 %22, i32* %26, align 4
  %27 = load %struct.platform_device**, %struct.platform_device*** %6, align 8
  %28 = load %struct.platform_device*, %struct.platform_device** %27, align 8
  %29 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %30 = call i32 @platform_set_drvdata(%struct.platform_device* %28, %struct.wm8350* %29)
  %31 = load %struct.platform_device**, %struct.platform_device*** %6, align 8
  %32 = load %struct.platform_device*, %struct.platform_device** %31, align 8
  %33 = call i32 @platform_device_add(%struct.platform_device* %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %19
  %37 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %38 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i8*, i8** %5, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 (i32, i8*, i8*, ...) @dev_err(i32 %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %40, i32 %41)
  %43 = load %struct.platform_device**, %struct.platform_device*** %6, align 8
  %44 = load %struct.platform_device*, %struct.platform_device** %43, align 8
  %45 = call i32 @platform_device_put(%struct.platform_device* %44)
  %46 = load %struct.platform_device**, %struct.platform_device*** %6, align 8
  store %struct.platform_device* null, %struct.platform_device** %46, align 8
  br label %47

47:                                               ; preds = %13, %36, %19
  ret void
}

declare dso_local %struct.platform_device* @platform_device_alloc(i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i8*, ...) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.wm8350*) #1

declare dso_local i32 @platform_device_add(%struct.platform_device*) #1

declare dso_local i32 @platform_device_put(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
