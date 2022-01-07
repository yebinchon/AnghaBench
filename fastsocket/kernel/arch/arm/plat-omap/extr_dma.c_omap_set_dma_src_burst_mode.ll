; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_dma.c_omap_set_dma_src_burst_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_dma.c_omap_set_dma_src_burst_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap_set_dma_src_burst_mode(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @CSDP(i32 %7)
  %9 = call i32 @dma_read(i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = and i32 %10, -385
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %30 [
    i32 128, label %13
    i32 130, label %14
    i32 129, label %20
    i32 131, label %25
  ]

13:                                               ; preds = %2
  br label %32

14:                                               ; preds = %2
  %15 = call i32 (...) @cpu_class_is_omap2()
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 1, i32* %5, align 4
  br label %19

18:                                               ; preds = %14
  store i32 2, i32* %5, align 4
  br label %19

19:                                               ; preds = %18, %17
  br label %32

20:                                               ; preds = %2
  %21 = call i32 (...) @cpu_class_is_omap2()
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 2, i32* %5, align 4
  br label %32

24:                                               ; preds = %20
  br label %25

25:                                               ; preds = %2, %24
  %26 = call i32 (...) @cpu_class_is_omap2()
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 3, i32* %5, align 4
  br label %32

29:                                               ; preds = %25
  br label %30

30:                                               ; preds = %2, %29
  %31 = call i32 (...) @BUG()
  br label %32

32:                                               ; preds = %30, %28, %23, %19, %13
  %33 = load i32, i32* %5, align 4
  %34 = shl i32 %33, 7
  %35 = load i32, i32* %6, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @CSDP(i32 %38)
  %40 = call i32 @dma_write(i32 %37, i32 %39)
  ret void
}

declare dso_local i32 @dma_read(i32) #1

declare dso_local i32 @CSDP(i32) #1

declare dso_local i32 @cpu_class_is_omap2(...) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @dma_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
