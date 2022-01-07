; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_platform.c_platform_device_register_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_platform.c_platform_device_register_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.platform_device* @platform_device_register_data(%struct.device* %0, i8* %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.platform_device*, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = load i32, i32* %9, align 4
  %16 = call %struct.platform_device* @platform_device_alloc(i8* %14, i32 %15)
  store %struct.platform_device* %16, %struct.platform_device** %12, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %12, align 8
  %18 = icmp ne %struct.platform_device* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %13, align 4
  br label %46

22:                                               ; preds = %5
  %23 = load %struct.device*, %struct.device** %7, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %12, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store %struct.device* %23, %struct.device** %26, align 8
  %27 = load i64, i64* %11, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %22
  %30 = load %struct.platform_device*, %struct.platform_device** %12, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = load i64, i64* %11, align 8
  %33 = call i32 @platform_device_add_data(%struct.platform_device* %30, i8* %31, i64 %32)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %46

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37, %22
  %39 = load %struct.platform_device*, %struct.platform_device** %12, align 8
  %40 = call i32 @platform_device_add(%struct.platform_device* %39)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %46

44:                                               ; preds = %38
  %45 = load %struct.platform_device*, %struct.platform_device** %12, align 8
  store %struct.platform_device* %45, %struct.platform_device** %6, align 8
  br label %51

46:                                               ; preds = %43, %36, %19
  %47 = load %struct.platform_device*, %struct.platform_device** %12, align 8
  %48 = call i32 @platform_device_put(%struct.platform_device* %47)
  %49 = load i32, i32* %13, align 4
  %50 = call %struct.platform_device* @ERR_PTR(i32 %49)
  store %struct.platform_device* %50, %struct.platform_device** %6, align 8
  br label %51

51:                                               ; preds = %46, %44
  %52 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  ret %struct.platform_device* %52
}

declare dso_local %struct.platform_device* @platform_device_alloc(i8*, i32) #1

declare dso_local i32 @platform_device_add_data(%struct.platform_device*, i8*, i64) #1

declare dso_local i32 @platform_device_add(%struct.platform_device*) #1

declare dso_local i32 @platform_device_put(%struct.platform_device*) #1

declare dso_local %struct.platform_device* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
