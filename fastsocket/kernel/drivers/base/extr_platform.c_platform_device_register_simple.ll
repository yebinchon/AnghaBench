; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_platform.c_platform_device_register_simple.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_platform.c_platform_device_register_simple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.resource = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.platform_device* @platform_device_register_simple(i8* %0, i32 %1, %struct.resource* %2, i32 %3) #0 {
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.platform_device*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.resource* %2, %struct.resource** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call %struct.platform_device* @platform_device_alloc(i8* %12, i32 %13)
  store %struct.platform_device* %14, %struct.platform_device** %10, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %10, align 8
  %16 = icmp ne %struct.platform_device* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %11, align 4
  br label %40

20:                                               ; preds = %4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %20
  %24 = load %struct.platform_device*, %struct.platform_device** %10, align 8
  %25 = load %struct.resource*, %struct.resource** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @platform_device_add_resources(%struct.platform_device* %24, %struct.resource* %25, i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %40

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %31, %20
  %33 = load %struct.platform_device*, %struct.platform_device** %10, align 8
  %34 = call i32 @platform_device_add(%struct.platform_device* %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %40

38:                                               ; preds = %32
  %39 = load %struct.platform_device*, %struct.platform_device** %10, align 8
  store %struct.platform_device* %39, %struct.platform_device** %5, align 8
  br label %45

40:                                               ; preds = %37, %30, %17
  %41 = load %struct.platform_device*, %struct.platform_device** %10, align 8
  %42 = call i32 @platform_device_put(%struct.platform_device* %41)
  %43 = load i32, i32* %11, align 4
  %44 = call %struct.platform_device* @ERR_PTR(i32 %43)
  store %struct.platform_device* %44, %struct.platform_device** %5, align 8
  br label %45

45:                                               ; preds = %40, %38
  %46 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  ret %struct.platform_device* %46
}

declare dso_local %struct.platform_device* @platform_device_alloc(i8*, i32) #1

declare dso_local i32 @platform_device_add_resources(%struct.platform_device*, %struct.resource*, i32) #1

declare dso_local i32 @platform_device_add(%struct.platform_device*) #1

declare dso_local i32 @platform_device_put(%struct.platform_device*) #1

declare dso_local %struct.platform_device* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
