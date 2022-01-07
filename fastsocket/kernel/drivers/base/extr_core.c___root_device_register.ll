; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_core.c___root_device_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_core.c___root_device_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32, i32 }
%struct.module = type { %struct.module_kobject }
%struct.module_kobject = type { i32 }
%struct.root_device = type { %struct.device, %struct.module* }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@root_device_release = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.device* @__root_device_register(i8* %0, %struct.module* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.module*, align 8
  %6 = alloca %struct.root_device*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.module* %1, %struct.module** %5, align 8
  %8 = load i32, i32* @ENOMEM, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.root_device* @kzalloc(i32 16, i32 %10)
  store %struct.root_device* %11, %struct.root_device** %6, align 8
  %12 = load %struct.root_device*, %struct.root_device** %6, align 8
  %13 = icmp ne %struct.root_device* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  %16 = call %struct.device* @ERR_PTR(i32 %15)
  store %struct.device* %16, %struct.device** %3, align 8
  br label %48

17:                                               ; preds = %2
  %18 = load %struct.root_device*, %struct.root_device** %6, align 8
  %19 = getelementptr inbounds %struct.root_device, %struct.root_device* %18, i32 0, i32 0
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @dev_set_name(%struct.device* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = load %struct.root_device*, %struct.root_device** %6, align 8
  %26 = call i32 @kfree(%struct.root_device* %25)
  %27 = load i32, i32* %7, align 4
  %28 = call %struct.device* @ERR_PTR(i32 %27)
  store %struct.device* %28, %struct.device** %3, align 8
  br label %48

29:                                               ; preds = %17
  %30 = load i32, i32* @root_device_release, align 4
  %31 = load %struct.root_device*, %struct.root_device** %6, align 8
  %32 = getelementptr inbounds %struct.root_device, %struct.root_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.device, %struct.device* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 4
  %34 = load %struct.root_device*, %struct.root_device** %6, align 8
  %35 = getelementptr inbounds %struct.root_device, %struct.root_device* %34, i32 0, i32 0
  %36 = call i32 @device_register(%struct.device* %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %29
  %40 = load %struct.root_device*, %struct.root_device** %6, align 8
  %41 = getelementptr inbounds %struct.root_device, %struct.root_device* %40, i32 0, i32 0
  %42 = call i32 @put_device(%struct.device* %41)
  %43 = load i32, i32* %7, align 4
  %44 = call %struct.device* @ERR_PTR(i32 %43)
  store %struct.device* %44, %struct.device** %3, align 8
  br label %48

45:                                               ; preds = %29
  %46 = load %struct.root_device*, %struct.root_device** %6, align 8
  %47 = getelementptr inbounds %struct.root_device, %struct.root_device* %46, i32 0, i32 0
  store %struct.device* %47, %struct.device** %3, align 8
  br label %48

48:                                               ; preds = %45, %39, %24, %14
  %49 = load %struct.device*, %struct.device** %3, align 8
  ret %struct.device* %49
}

declare dso_local %struct.root_device* @kzalloc(i32, i32) #1

declare dso_local %struct.device* @ERR_PTR(i32) #1

declare dso_local i32 @dev_set_name(%struct.device*, i8*, i8*) #1

declare dso_local i32 @kfree(%struct.root_device*) #1

declare dso_local i32 @device_register(%struct.device*) #1

declare dso_local i32 @put_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
