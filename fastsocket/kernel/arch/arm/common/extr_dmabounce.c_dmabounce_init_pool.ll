; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/common/extr_dmabounce.c_dmabounce_init_pool.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/common/extr_dmabounce.c_dmabounce_init_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmabounce_pool = type { i64, i64, i64 }
%struct.device = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmabounce_pool*, %struct.device*, i8*, i64)* @dmabounce_init_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmabounce_init_pool(%struct.dmabounce_pool* %0, %struct.device* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.dmabounce_pool*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.dmabounce_pool* %0, %struct.dmabounce_pool** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.dmabounce_pool*, %struct.dmabounce_pool** %5, align 8
  %11 = getelementptr inbounds %struct.dmabounce_pool, %struct.dmabounce_pool* %10, i32 0, i32 0
  store i64 %9, i64* %11, align 8
  %12 = load %struct.dmabounce_pool*, %struct.dmabounce_pool** %5, align 8
  %13 = getelementptr inbounds %struct.dmabounce_pool, %struct.dmabounce_pool* %12, i32 0, i32 2
  store i64 0, i64* %13, align 8
  %14 = call i32 @DO_STATS(i64 0)
  %15 = load i8*, i8** %7, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = load i64, i64* %8, align 8
  %18 = call i64 @dma_pool_create(i8* %15, %struct.device* %16, i64 %17, i32 0, i32 0)
  %19 = load %struct.dmabounce_pool*, %struct.dmabounce_pool** %5, align 8
  %20 = getelementptr inbounds %struct.dmabounce_pool, %struct.dmabounce_pool* %19, i32 0, i32 1
  store i64 %18, i64* %20, align 8
  %21 = load %struct.dmabounce_pool*, %struct.dmabounce_pool** %5, align 8
  %22 = getelementptr inbounds %struct.dmabounce_pool, %struct.dmabounce_pool* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  br label %29

26:                                               ; preds = %4
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  br label %29

29:                                               ; preds = %26, %25
  %30 = phi i32 [ 0, %25 ], [ %28, %26 ]
  ret i32 %30
}

declare dso_local i32 @DO_STATS(i64) #1

declare dso_local i64 @dma_pool_create(i8*, %struct.device*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
