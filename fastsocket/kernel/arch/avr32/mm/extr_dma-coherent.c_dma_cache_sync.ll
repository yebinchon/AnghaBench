; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/avr32/mm/extr_dma-coherent.c_dma_cache_sync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/avr32/mm/extr_dma-coherent.c_dma_cache_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@P2SEG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dma_cache_sync(%struct.device* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i8*, i8** %6, align 8
  %10 = call i64 @PXSEG(i8* %9)
  %11 = load i64, i64* @P2SEG, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  br label %30

14:                                               ; preds = %4
  %15 = load i32, i32* %8, align 4
  switch i32 %15, label %28 [
    i32 129, label %16
    i32 128, label %20
    i32 130, label %24
  ]

16:                                               ; preds = %14
  %17 = load i8*, i8** %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @invalidate_dcache_region(i8* %17, i64 %18)
  br label %30

20:                                               ; preds = %14
  %21 = load i8*, i8** %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @clean_dcache_region(i8* %21, i64 %22)
  br label %30

24:                                               ; preds = %14
  %25 = load i8*, i8** %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @flush_dcache_region(i8* %25, i64 %26)
  br label %30

28:                                               ; preds = %14
  %29 = call i32 (...) @BUG()
  br label %30

30:                                               ; preds = %13, %28, %24, %20, %16
  ret void
}

declare dso_local i64 @PXSEG(i8*) #1

declare dso_local i32 @invalidate_dcache_region(i8*, i64) #1

declare dso_local i32 @clean_dcache_region(i8*, i64) #1

declare dso_local i32 @flush_dcache_region(i8*, i64) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
