; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/kernel/extr_pci-dma.c_pa11_dma_free_consistent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/parisc/kernel/extr_pci-dma.c_pa11_dma_free_consistent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i64, i8*, i32)* @pa11_dma_free_consistent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pa11_dma_free_consistent(%struct.device* %0, i64 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i64, i64* %6, align 8
  %11 = call i32 @get_order(i64 %10)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* @PAGE_SHIFT, align 4
  %14 = add nsw i32 %12, %13
  %15 = shl i32 1, %14
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %6, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = ptrtoint i8* %17 to i64
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @unmap_uncached_pages(i64 %18, i64 %19)
  %21 = load i8*, i8** %7, align 8
  %22 = ptrtoint i8* %21 to i64
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @pcxl_free_range(i64 %22, i64 %23)
  %25 = load i32, i32* %8, align 4
  %26 = call i64 @__va(i32 %25)
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @free_pages(i64 %26, i32 %27)
  ret void
}

declare dso_local i32 @get_order(i64) #1

declare dso_local i32 @unmap_uncached_pages(i64, i64) #1

declare dso_local i32 @pcxl_free_range(i64, i64) #1

declare dso_local i32 @free_pages(i64, i32) #1

declare dso_local i64 @__va(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
