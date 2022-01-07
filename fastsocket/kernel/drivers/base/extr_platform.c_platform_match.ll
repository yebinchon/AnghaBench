; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_platform.c_platform_match.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_platform.c_platform_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_driver = type { i32 }
%struct.platform_device = type { i32 }
%struct.platform_driver = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_driver*)* @platform_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @platform_match(%struct.device* %0, %struct.device_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_driver*, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.platform_driver*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_driver* %1, %struct.device_driver** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.platform_device* @to_platform_device(%struct.device* %8)
  store %struct.platform_device* %9, %struct.platform_device** %6, align 8
  %10 = load %struct.device_driver*, %struct.device_driver** %5, align 8
  %11 = call %struct.platform_driver* @to_platform_driver(%struct.device_driver* %10)
  store %struct.platform_driver* %11, %struct.platform_driver** %7, align 8
  %12 = load %struct.platform_driver*, %struct.platform_driver** %7, align 8
  %13 = getelementptr inbounds %struct.platform_driver, %struct.platform_driver* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load %struct.platform_driver*, %struct.platform_driver** %7, align 8
  %18 = getelementptr inbounds %struct.platform_driver, %struct.platform_driver* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %21 = call i32* @platform_match_id(i64 %19, %struct.platform_device* %20)
  %22 = icmp ne i32* %21, null
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %3, align 4
  br label %34

24:                                               ; preds = %2
  %25 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.device_driver*, %struct.device_driver** %5, align 8
  %29 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @strcmp(i32 %27, i32 %30)
  %32 = icmp eq i64 %31, 0
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %24, %16
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local %struct.platform_driver* @to_platform_driver(%struct.device_driver*) #1

declare dso_local i32* @platform_match_id(i64, %struct.platform_device*) #1

declare dso_local i64 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
