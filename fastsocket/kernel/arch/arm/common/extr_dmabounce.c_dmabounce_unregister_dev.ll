; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/common/extr_dmabounce.c_dmabounce_unregister_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/common/extr_dmabounce.c_dmabounce_unregister_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.dmabounce_device_info* }
%struct.dmabounce_device_info = type { i64, %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [62 x i8] c"Never registered with dmabounce but attemptingto unregister!\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Removing from dmabounce with pending buffers!\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"dmabounce: device unregistered\0A\00", align 1
@dev_attr_dmabounce_stats = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dmabounce_unregister_dev(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.dmabounce_device_info*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load %struct.dmabounce_device_info*, %struct.dmabounce_device_info** %6, align 8
  store %struct.dmabounce_device_info* %7, %struct.dmabounce_device_info** %3, align 8
  %8 = load %struct.device*, %struct.device** %2, align 8
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store %struct.dmabounce_device_info* null, %struct.dmabounce_device_info** %10, align 8
  %11 = load %struct.dmabounce_device_info*, %struct.dmabounce_device_info** %3, align 8
  %12 = icmp ne %struct.dmabounce_device_info* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load %struct.device*, %struct.device** %2, align 8
  %15 = call i32 @dev_warn(%struct.device* %14, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  br label %54

16:                                               ; preds = %1
  %17 = load %struct.dmabounce_device_info*, %struct.dmabounce_device_info** %3, align 8
  %18 = getelementptr inbounds %struct.dmabounce_device_info, %struct.dmabounce_device_info* %17, i32 0, i32 3
  %19 = call i32 @list_empty(i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = load %struct.device*, %struct.device** %2, align 8
  %23 = call i32 @dev_err(%struct.device* %22, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %24 = call i32 (...) @BUG()
  br label %25

25:                                               ; preds = %21, %16
  %26 = load %struct.dmabounce_device_info*, %struct.dmabounce_device_info** %3, align 8
  %27 = getelementptr inbounds %struct.dmabounce_device_info, %struct.dmabounce_device_info* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load %struct.dmabounce_device_info*, %struct.dmabounce_device_info** %3, align 8
  %33 = getelementptr inbounds %struct.dmabounce_device_info, %struct.dmabounce_device_info* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @dma_pool_destroy(i64 %35)
  br label %37

37:                                               ; preds = %31, %25
  %38 = load %struct.dmabounce_device_info*, %struct.dmabounce_device_info** %3, align 8
  %39 = getelementptr inbounds %struct.dmabounce_device_info, %struct.dmabounce_device_info* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load %struct.dmabounce_device_info*, %struct.dmabounce_device_info** %3, align 8
  %45 = getelementptr inbounds %struct.dmabounce_device_info, %struct.dmabounce_device_info* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @dma_pool_destroy(i64 %47)
  br label %49

49:                                               ; preds = %43, %37
  %50 = load %struct.dmabounce_device_info*, %struct.dmabounce_device_info** %3, align 8
  %51 = call i32 @kfree(%struct.dmabounce_device_info* %50)
  %52 = load %struct.device*, %struct.device** %2, align 8
  %53 = call i32 @dev_info(%struct.device* %52, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %54

54:                                               ; preds = %49, %13
  ret void
}

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @dma_pool_destroy(i64) #1

declare dso_local i32 @kfree(%struct.dmabounce_device_info*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
