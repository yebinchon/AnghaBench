; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-integrator/extr_lm.c_lm_device_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-integrator/extr_lm.c_lm_device_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm_device = type { %struct.TYPE_6__, %struct.TYPE_7__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32*, i32 }

@lm_device_release = common dso_local global i32 0, align 4
@lm_bustype = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"lm%d\00", align 1
@iomem_resource = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lm_device_register(%struct.lm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lm_device*, align 8
  %4 = alloca i32, align 4
  store %struct.lm_device* %0, %struct.lm_device** %3, align 8
  %5 = load i32, i32* @lm_device_release, align 4
  %6 = load %struct.lm_device*, %struct.lm_device** %3, align 8
  %7 = getelementptr inbounds %struct.lm_device, %struct.lm_device* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  store i32 %5, i32* %8, align 8
  %9 = load %struct.lm_device*, %struct.lm_device** %3, align 8
  %10 = getelementptr inbounds %struct.lm_device, %struct.lm_device* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  store i32* @lm_bustype, i32** %11, align 8
  %12 = load %struct.lm_device*, %struct.lm_device** %3, align 8
  %13 = getelementptr inbounds %struct.lm_device, %struct.lm_device* %12, i32 0, i32 1
  %14 = load %struct.lm_device*, %struct.lm_device** %3, align 8
  %15 = getelementptr inbounds %struct.lm_device, %struct.lm_device* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @dev_set_name(%struct.TYPE_7__* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %47

22:                                               ; preds = %1
  %23 = load %struct.lm_device*, %struct.lm_device** %3, align 8
  %24 = getelementptr inbounds %struct.lm_device, %struct.lm_device* %23, i32 0, i32 1
  %25 = call i32 @dev_name(%struct.TYPE_7__* %24)
  %26 = load %struct.lm_device*, %struct.lm_device** %3, align 8
  %27 = getelementptr inbounds %struct.lm_device, %struct.lm_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  %29 = load %struct.lm_device*, %struct.lm_device** %3, align 8
  %30 = getelementptr inbounds %struct.lm_device, %struct.lm_device* %29, i32 0, i32 0
  %31 = call i32 @request_resource(i32* @iomem_resource, %struct.TYPE_6__* %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %22
  %35 = load %struct.lm_device*, %struct.lm_device** %3, align 8
  %36 = getelementptr inbounds %struct.lm_device, %struct.lm_device* %35, i32 0, i32 1
  %37 = call i32 @device_register(%struct.TYPE_7__* %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load %struct.lm_device*, %struct.lm_device** %3, align 8
  %42 = getelementptr inbounds %struct.lm_device, %struct.lm_device* %41, i32 0, i32 0
  %43 = call i32 @release_resource(%struct.TYPE_6__* %42)
  br label %44

44:                                               ; preds = %40, %34
  br label %45

45:                                               ; preds = %44, %22
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %45, %20
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @dev_set_name(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_7__*) #1

declare dso_local i32 @request_resource(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @device_register(%struct.TYPE_7__*) #1

declare dso_local i32 @release_resource(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
