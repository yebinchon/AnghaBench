; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_user_sdma.c_qib_user_sdma_queue_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_user_sdma.c_qib_user_sdma_queue_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_user_sdma_queue = type { i32, i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"qib-user-sdma-pkts-%u-%02u.%02u\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"qib-user-sdma-headers-%u-%02u.%02u\00", align 1
@QIB_USER_SDMA_EXP_HEADER_LENGTH = common dso_local global i32 0, align 4
@RB_ROOT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.qib_user_sdma_queue* @qib_user_sdma_queue_create(%struct.device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.qib_user_sdma_queue*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.qib_user_sdma_queue* @kmalloc(i32 48, i32 %10)
  store %struct.qib_user_sdma_queue* %11, %struct.qib_user_sdma_queue** %9, align 8
  %12 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %9, align 8
  %13 = icmp ne %struct.qib_user_sdma_queue* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  br label %77

15:                                               ; preds = %4
  %16 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %9, align 8
  %17 = getelementptr inbounds %struct.qib_user_sdma_queue, %struct.qib_user_sdma_queue* %16, i32 0, i32 8
  store i64 0, i64* %17, align 8
  %18 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %9, align 8
  %19 = getelementptr inbounds %struct.qib_user_sdma_queue, %struct.qib_user_sdma_queue* %18, i32 0, i32 7
  store i64 0, i64* %19, align 8
  %20 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %9, align 8
  %21 = getelementptr inbounds %struct.qib_user_sdma_queue, %struct.qib_user_sdma_queue* %20, i32 0, i32 6
  %22 = call i32 @INIT_LIST_HEAD(i32* %21)
  %23 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %9, align 8
  %24 = getelementptr inbounds %struct.qib_user_sdma_queue, %struct.qib_user_sdma_queue* %23, i32 0, i32 5
  %25 = call i32 @mutex_init(i32* %24)
  %26 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %9, align 8
  %27 = getelementptr inbounds %struct.qib_user_sdma_queue, %struct.qib_user_sdma_queue* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @snprintf(i32 %28, i32 4, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30, i32 %31)
  %33 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %9, align 8
  %34 = getelementptr inbounds %struct.qib_user_sdma_queue, %struct.qib_user_sdma_queue* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @kmem_cache_create(i32 %35, i32 4, i32 0, i32 0, i32* null)
  %37 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %9, align 8
  %38 = getelementptr inbounds %struct.qib_user_sdma_queue, %struct.qib_user_sdma_queue* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %9, align 8
  %40 = getelementptr inbounds %struct.qib_user_sdma_queue, %struct.qib_user_sdma_queue* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %15
  br label %74

44:                                               ; preds = %15
  %45 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %9, align 8
  %46 = getelementptr inbounds %struct.qib_user_sdma_queue, %struct.qib_user_sdma_queue* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @snprintf(i32 %47, i32 4, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %48, i32 %49, i32 %50)
  %52 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %9, align 8
  %53 = getelementptr inbounds %struct.qib_user_sdma_queue, %struct.qib_user_sdma_queue* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.device*, %struct.device** %5, align 8
  %56 = load i32, i32* @QIB_USER_SDMA_EXP_HEADER_LENGTH, align 4
  %57 = call i32 @dma_pool_create(i32 %54, %struct.device* %55, i32 %56, i32 4, i32 0)
  %58 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %9, align 8
  %59 = getelementptr inbounds %struct.qib_user_sdma_queue, %struct.qib_user_sdma_queue* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  %60 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %9, align 8
  %61 = getelementptr inbounds %struct.qib_user_sdma_queue, %struct.qib_user_sdma_queue* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %44
  br label %69

65:                                               ; preds = %44
  %66 = load i32, i32* @RB_ROOT, align 4
  %67 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %9, align 8
  %68 = getelementptr inbounds %struct.qib_user_sdma_queue, %struct.qib_user_sdma_queue* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  br label %77

69:                                               ; preds = %64
  %70 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %9, align 8
  %71 = getelementptr inbounds %struct.qib_user_sdma_queue, %struct.qib_user_sdma_queue* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @kmem_cache_destroy(i32 %72)
  br label %74

74:                                               ; preds = %69, %43
  %75 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %9, align 8
  %76 = call i32 @kfree(%struct.qib_user_sdma_queue* %75)
  store %struct.qib_user_sdma_queue* null, %struct.qib_user_sdma_queue** %9, align 8
  br label %77

77:                                               ; preds = %74, %65, %14
  %78 = load %struct.qib_user_sdma_queue*, %struct.qib_user_sdma_queue** %9, align 8
  ret %struct.qib_user_sdma_queue* %78
}

declare dso_local %struct.qib_user_sdma_queue* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @kmem_cache_create(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @dma_pool_create(i32, %struct.device*, i32, i32, i32) #1

declare dso_local i32 @kmem_cache_destroy(i32) #1

declare dso_local i32 @kfree(%struct.qib_user_sdma_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
