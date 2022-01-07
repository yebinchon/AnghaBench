; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/sun3x/extr_dvma.c_dvma_unmap_iommu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/sun3x/extr_dvma.c_dvma_unmap_iommu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DVMA_PAGE_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dvma_unmap_iommu(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @DVMA_PAGE_SHIFT, align 8
  %9 = lshr i64 %7, %8
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %5, align 4
  %11 = load i64, i64* %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = add i64 %11, %13
  %15 = call i64 @DVMA_PAGE_ALIGN(i64 %14)
  %16 = load i64, i64* @DVMA_PAGE_SHIFT, align 8
  %17 = lshr i64 %15, %16
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %6, align 4
  br label %19

19:                                               ; preds = %26, %2
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @dvma_entry_clr(i32 %24)
  br label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  br label %19

29:                                               ; preds = %19
  ret void
}

declare dso_local i64 @DVMA_PAGE_ALIGN(i64) #1

declare dso_local i32 @dvma_entry_clr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
