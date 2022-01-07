; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/common/extr_dmabounce.c_dmabounce_register_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/common/extr_dmabounce.c_dmabounce_register_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.dmabounce_device_info* }
%struct.dmabounce_device_info = type { %struct.TYPE_4__, i32, i64, i64, i64, i32, i32, %struct.device*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Could not allocated dmabounce_device_info\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"small_dmabounce_pool\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"dmabounce: could not allocate DMA pool for %ld byte objects\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"large_dmabounce_pool\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"dmabounce: registered device\0A\00", align 1
@dev_attr_dmabounce_stats = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmabounce_register_dev(%struct.device* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.dmabounce_device_info*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i32, i32* @GFP_ATOMIC, align 4
  %11 = call %struct.dmabounce_device_info* @kmalloc(i32 56, i32 %10)
  store %struct.dmabounce_device_info* %11, %struct.dmabounce_device_info** %8, align 8
  %12 = load %struct.dmabounce_device_info*, %struct.dmabounce_device_info** %8, align 8
  %13 = icmp ne %struct.dmabounce_device_info* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %3
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %15, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %73

19:                                               ; preds = %3
  %20 = load %struct.dmabounce_device_info*, %struct.dmabounce_device_info** %8, align 8
  %21 = getelementptr inbounds %struct.dmabounce_device_info, %struct.dmabounce_device_info* %20, i32 0, i32 0
  %22 = load %struct.device*, %struct.device** %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @dmabounce_init_pool(%struct.TYPE_4__* %21, %struct.device* %22, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = load %struct.device*, %struct.device** %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %28, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i64 %29)
  br label %69

31:                                               ; preds = %19
  %32 = load i64, i64* %7, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %31
  %35 = load %struct.dmabounce_device_info*, %struct.dmabounce_device_info** %8, align 8
  %36 = getelementptr inbounds %struct.dmabounce_device_info, %struct.dmabounce_device_info* %35, i32 0, i32 8
  %37 = load %struct.device*, %struct.device** %5, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @dmabounce_init_pool(%struct.TYPE_4__* %36, %struct.device* %37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i64 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %34
  %43 = load %struct.device*, %struct.device** %5, align 8
  %44 = load i64, i64* %7, align 8
  %45 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %43, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i64 %44)
  br label %63

46:                                               ; preds = %34
  br label %47

47:                                               ; preds = %46, %31
  %48 = load %struct.device*, %struct.device** %5, align 8
  %49 = load %struct.dmabounce_device_info*, %struct.dmabounce_device_info** %8, align 8
  %50 = getelementptr inbounds %struct.dmabounce_device_info, %struct.dmabounce_device_info* %49, i32 0, i32 7
  store %struct.device* %48, %struct.device** %50, align 8
  %51 = load %struct.dmabounce_device_info*, %struct.dmabounce_device_info** %8, align 8
  %52 = getelementptr inbounds %struct.dmabounce_device_info, %struct.dmabounce_device_info* %51, i32 0, i32 6
  %53 = call i32 @INIT_LIST_HEAD(i32* %52)
  %54 = load %struct.dmabounce_device_info*, %struct.dmabounce_device_info** %8, align 8
  %55 = getelementptr inbounds %struct.dmabounce_device_info, %struct.dmabounce_device_info* %54, i32 0, i32 5
  %56 = call i32 @rwlock_init(i32* %55)
  %57 = load %struct.dmabounce_device_info*, %struct.dmabounce_device_info** %8, align 8
  %58 = load %struct.device*, %struct.device** %5, align 8
  %59 = getelementptr inbounds %struct.device, %struct.device* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store %struct.dmabounce_device_info* %57, %struct.dmabounce_device_info** %60, align 8
  %61 = load %struct.device*, %struct.device** %5, align 8
  %62 = call i32 @dev_info(%struct.device* %61, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %73

63:                                               ; preds = %42
  %64 = load %struct.dmabounce_device_info*, %struct.dmabounce_device_info** %8, align 8
  %65 = getelementptr inbounds %struct.dmabounce_device_info, %struct.dmabounce_device_info* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @dma_pool_destroy(i32 %67)
  br label %69

69:                                               ; preds = %63, %27
  %70 = load %struct.dmabounce_device_info*, %struct.dmabounce_device_info** %8, align 8
  %71 = call i32 @kfree(%struct.dmabounce_device_info* %70)
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %69, %47, %14
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local %struct.dmabounce_device_info* @kmalloc(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @dmabounce_init_pool(%struct.TYPE_4__*, %struct.device*, i8*, i64) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @dma_pool_destroy(i32) #1

declare dso_local i32 @kfree(%struct.dmabounce_device_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
