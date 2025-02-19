; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/kernel/extr_bfin_dma_5xx.c__dma_out.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/kernel/extr_bfin_dma_5xx.c__dma_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i16, i16, i16)* @_dma_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_dma_out(i64 %0, i64 %1, i16 zeroext %2, i16 zeroext %3, i16 zeroext %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i16 %2, i16* %8, align 2
  store i16 %3, i16* %9, align 2
  store i16 %4, i16* %10, align 2
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i16, i16* %8, align 2
  %14 = zext i16 %13 to i32
  %15 = load i16, i16* %9, align 2
  %16 = zext i16 %15 to i32
  %17 = mul nsw i32 %14, %16
  %18 = sext i32 %17 to i64
  %19 = add i64 %12, %18
  %20 = call i32 @blackfin_dcache_flush_range(i64 %11, i64 %19)
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i16, i16* %9, align 2
  %24 = load i16, i16* %8, align 2
  %25 = load i16, i16* %10, align 2
  %26 = call i32 @__dma_memcpy(i64 %21, i32 0, i64 %22, i16 zeroext %23, i16 zeroext %24, i16 zeroext %25)
  ret void
}

declare dso_local i32 @blackfin_dcache_flush_range(i64, i64) #1

declare dso_local i32 @__dma_memcpy(i64, i32, i64, i16 zeroext, i16 zeroext, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
