; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_dma.c_dma_direct_alloc_coherent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_dma.c_dma_direct_alloc_coherent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.page = type { i32 }

@__GFP_HIGHMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @dma_direct_alloc_coherent(%struct.device* %0, i64 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.page*, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call i32 @dev_to_node(%struct.device* %13)
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* @__GFP_HIGHMEM, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %9, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @get_order(i64 %21)
  %23 = call %struct.page* @alloc_pages_node(i32 %19, i32 %20, i32 %22)
  store %struct.page* %23, %struct.page** %11, align 8
  %24 = load %struct.page*, %struct.page** %11, align 8
  %25 = icmp eq %struct.page* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %40

27:                                               ; preds = %4
  %28 = load %struct.page*, %struct.page** %11, align 8
  %29 = call i8* @page_address(%struct.page* %28)
  store i8* %29, i8** %10, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @memset(i8* %30, i32 0, i64 %31)
  %33 = load i8*, i8** %10, align 8
  %34 = call i64 @virt_to_abs(i8* %33)
  %35 = load %struct.device*, %struct.device** %6, align 8
  %36 = call i64 @get_dma_offset(%struct.device* %35)
  %37 = add nsw i64 %34, %36
  %38 = load i64*, i64** %8, align 8
  store i64 %37, i64* %38, align 8
  %39 = load i8*, i8** %10, align 8
  store i8* %39, i8** %5, align 8
  br label %40

40:                                               ; preds = %27, %26
  %41 = load i8*, i8** %5, align 8
  ret i8* %41
}

declare dso_local i32 @dev_to_node(%struct.device*) #1

declare dso_local %struct.page* @alloc_pages_node(i32, i32, i32) #1

declare dso_local i32 @get_order(i64) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i64 @virt_to_abs(i8*) #1

declare dso_local i64 @get_dma_offset(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
