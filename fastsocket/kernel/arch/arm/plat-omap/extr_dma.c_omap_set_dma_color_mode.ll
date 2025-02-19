; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_dma.c_omap_set_dma_color_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_dma.c_omap_set_dma_color_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap_set_dma_color_mode(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = call i32 (...) @omap_dma_in_1510_mode()
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = call i64 (...) @cpu_class_is_omap1()
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %58

13:                                               ; preds = %3
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @CCR2(i32 %14)
  %16 = call i32 @dma_read(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = and i32 %17, -4
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %27 [
    i32 129, label %20
    i32 128, label %23
    i32 130, label %26
  ]

20:                                               ; preds = %13
  %21 = load i32, i32* %7, align 4
  %22 = or i32 %21, 1
  store i32 %22, i32* %7, align 4
  br label %29

23:                                               ; preds = %13
  %24 = load i32, i32* %7, align 4
  %25 = or i32 %24, 2
  store i32 %25, i32* %7, align 4
  br label %29

26:                                               ; preds = %13
  br label %29

27:                                               ; preds = %13
  %28 = call i32 (...) @BUG()
  br label %29

29:                                               ; preds = %27, %26, %23, %20
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @CCR2(i32 %31)
  %33 = call i32 @dma_write(i32 %30, i32 %32)
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @LCH_CTRL(i32 %34)
  %36 = call i32 @dma_read(i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = and i32 %37, -16
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %29
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @COLOR_L(i32 %43)
  %45 = call i32 @dma_write(i32 %42, i32 %44)
  %46 = load i32, i32* %6, align 4
  %47 = ashr i32 %46, 16
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @COLOR_U(i32 %48)
  %50 = call i32 @dma_write(i32 %47, i32 %49)
  %51 = load i32, i32* %7, align 4
  %52 = or i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %41, %29
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @LCH_CTRL(i32 %55)
  %57 = call i32 @dma_write(i32 %54, i32 %56)
  br label %58

58:                                               ; preds = %53, %3
  %59 = call i64 (...) @cpu_class_is_omap2()
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %88

61:                                               ; preds = %58
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @CCR(i32 %62)
  %64 = call i32 @dma_read(i32 %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = and i32 %65, -196609
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %5, align 4
  switch i32 %67, label %75 [
    i32 129, label %68
    i32 128, label %71
    i32 130, label %74
  ]

68:                                               ; preds = %61
  %69 = load i32, i32* %8, align 4
  %70 = or i32 %69, 65536
  store i32 %70, i32* %8, align 4
  br label %77

71:                                               ; preds = %61
  %72 = load i32, i32* %8, align 4
  %73 = or i32 %72, 131072
  store i32 %73, i32* %8, align 4
  br label %77

74:                                               ; preds = %61
  br label %77

75:                                               ; preds = %61
  %76 = call i32 (...) @BUG()
  br label %77

77:                                               ; preds = %75, %74, %71, %68
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @CCR(i32 %79)
  %81 = call i32 @dma_write(i32 %78, i32 %80)
  %82 = load i32, i32* %6, align 4
  %83 = and i32 %82, 16777215
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @COLOR(i32 %85)
  %87 = call i32 @dma_write(i32 %84, i32 %86)
  br label %88

88:                                               ; preds = %77, %58
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @omap_dma_in_1510_mode(...) #1

declare dso_local i64 @cpu_class_is_omap1(...) #1

declare dso_local i32 @dma_read(i32) #1

declare dso_local i32 @CCR2(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @dma_write(i32, i32) #1

declare dso_local i32 @LCH_CTRL(i32) #1

declare dso_local i32 @COLOR_L(i32) #1

declare dso_local i32 @COLOR_U(i32) #1

declare dso_local i64 @cpu_class_is_omap2(...) #1

declare dso_local i32 @CCR(i32) #1

declare dso_local i32 @COLOR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
