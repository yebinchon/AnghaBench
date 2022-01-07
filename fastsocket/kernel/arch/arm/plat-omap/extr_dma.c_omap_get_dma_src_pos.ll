; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_dma.c_omap_get_dma_src_pos.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_dma.c_omap_get_dma_src_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap_get_dma_src_pos(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = call i64 (...) @cpu_is_omap15xx()
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @CPC(i32 %7)
  %9 = call i32 @dma_read(i32 %8)
  store i32 %9, i32* %3, align 4
  br label %14

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @CSAC(i32 %11)
  %13 = call i32 @dma_read(i32 %12)
  store i32 %13, i32* %3, align 4
  br label %14

14:                                               ; preds = %10, %6
  %15 = call i64 (...) @cpu_is_omap15xx()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %3, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @CSAC(i32 %21)
  %23 = call i32 @dma_read(i32 %22)
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %20, %17, %14
  %25 = call i64 (...) @cpu_class_is_omap1()
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load i32, i32* %2, align 4
  %29 = call i32 @CSSA_U(i32 %28)
  %30 = call i32 @dma_read(i32 %29)
  %31 = shl i32 %30, 16
  %32 = load i32, i32* %3, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %27, %24
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i64 @cpu_is_omap15xx(...) #1

declare dso_local i32 @dma_read(i32) #1

declare dso_local i32 @CPC(i32) #1

declare dso_local i32 @CSAC(i32) #1

declare dso_local i64 @cpu_class_is_omap1(...) #1

declare dso_local i32 @CSSA_U(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
