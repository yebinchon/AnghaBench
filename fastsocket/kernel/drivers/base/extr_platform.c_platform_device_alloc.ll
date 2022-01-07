; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_platform.c_platform_device_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_platform.c_platform_device_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.platform_object = type { %struct.platform_device, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@platform_device_release = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.platform_device* @platform_device_alloc(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.platform_object*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = call i64 @strlen(i8* %6)
  %8 = add i64 16, %7
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.platform_object* @kzalloc(i64 %8, i32 %9)
  store %struct.platform_object* %10, %struct.platform_object** %5, align 8
  %11 = load %struct.platform_object*, %struct.platform_object** %5, align 8
  %12 = icmp ne %struct.platform_object* %11, null
  br i1 %12, label %13, label %38

13:                                               ; preds = %2
  %14 = load %struct.platform_object*, %struct.platform_object** %5, align 8
  %15 = getelementptr inbounds %struct.platform_object, %struct.platform_object* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @strcpy(i32 %16, i8* %17)
  %19 = load %struct.platform_object*, %struct.platform_object** %5, align 8
  %20 = getelementptr inbounds %struct.platform_object, %struct.platform_object* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.platform_object*, %struct.platform_object** %5, align 8
  %23 = getelementptr inbounds %struct.platform_object, %struct.platform_object* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 2
  store i32 %21, i32* %24, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.platform_object*, %struct.platform_object** %5, align 8
  %27 = getelementptr inbounds %struct.platform_object, %struct.platform_object* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 4
  %29 = load %struct.platform_object*, %struct.platform_object** %5, align 8
  %30 = getelementptr inbounds %struct.platform_object, %struct.platform_object* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 1
  %32 = call i32 @device_initialize(%struct.TYPE_2__* %31)
  %33 = load i32, i32* @platform_device_release, align 4
  %34 = load %struct.platform_object*, %struct.platform_object** %5, align 8
  %35 = getelementptr inbounds %struct.platform_object, %struct.platform_object* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 %33, i32* %37, align 4
  br label %38

38:                                               ; preds = %13, %2
  %39 = load %struct.platform_object*, %struct.platform_object** %5, align 8
  %40 = icmp ne %struct.platform_object* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load %struct.platform_object*, %struct.platform_object** %5, align 8
  %43 = getelementptr inbounds %struct.platform_object, %struct.platform_object* %42, i32 0, i32 0
  br label %45

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %44, %41
  %46 = phi %struct.platform_device* [ %43, %41 ], [ null, %44 ]
  ret %struct.platform_device* %46
}

declare dso_local %struct.platform_object* @kzalloc(i64, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @device_initialize(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
