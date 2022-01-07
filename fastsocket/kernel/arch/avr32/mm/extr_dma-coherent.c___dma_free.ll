; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/avr32/mm/extr_dma-coherent.c___dma_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/avr32/mm/extr_dma-coherent.c___dma_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.page = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i64, %struct.page*, i32)* @__dma_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__dma_free(%struct.device* %0, i64 %1, %struct.page* %2, i32 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.page*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.page* %2, %struct.page** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.page*, %struct.page** %7, align 8
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @PAGE_ALIGN(i64 %11)
  %13 = load i32, i32* @PAGE_SHIFT, align 4
  %14 = ashr i32 %12, %13
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.page, %struct.page* %10, i64 %15
  store %struct.page* %16, %struct.page** %9, align 8
  br label %17

17:                                               ; preds = %21, %4
  %18 = load %struct.page*, %struct.page** %7, align 8
  %19 = load %struct.page*, %struct.page** %9, align 8
  %20 = icmp ult %struct.page* %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load %struct.page*, %struct.page** %7, align 8
  %23 = getelementptr inbounds %struct.page, %struct.page* %22, i32 1
  store %struct.page* %23, %struct.page** %7, align 8
  %24 = ptrtoint %struct.page* %22 to i32
  %25 = call i32 @__free_page(i32 %24)
  br label %17

26:                                               ; preds = %17
  ret void
}

declare dso_local i32 @PAGE_ALIGN(i64) #1

declare dso_local i32 @__free_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
