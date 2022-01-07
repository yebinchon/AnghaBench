; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_dma.c_omap_set_dma_src_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_dma.c_omap_set_dma_src_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap_set_dma_src_params(i32 %0, i32 %1, i32 %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = call i64 (...) @cpu_class_is_omap1()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %6
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @CSDP(i32 %18)
  %20 = call i32 @dma_read(i32 %19)
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %14, align 4
  %22 = and i32 %21, -125
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %8, align 4
  %24 = shl i32 %23, 2
  %25 = load i32, i32* %14, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @CSDP(i32 %28)
  %30 = call i32 @dma_write(i32 %27, i32 %29)
  br label %31

31:                                               ; preds = %17, %6
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @CCR(i32 %32)
  %34 = call i32 @dma_read(i32 %33)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = and i32 %35, -12289
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %9, align 4
  %38 = shl i32 %37, 12
  %39 = load i32, i32* %13, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @CCR(i32 %42)
  %44 = call i32 @dma_write(i32 %41, i32 %43)
  %45 = call i64 (...) @cpu_class_is_omap1()
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %31
  %48 = load i64, i64* %10, align 8
  %49 = lshr i64 %48, 16
  %50 = trunc i64 %49 to i32
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @CSSA_U(i32 %51)
  %53 = call i32 @dma_write(i32 %50, i32 %52)
  %54 = load i64, i64* %10, align 8
  %55 = trunc i64 %54 to i32
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @CSSA_L(i32 %56)
  %58 = call i32 @dma_write(i32 %55, i32 %57)
  br label %59

59:                                               ; preds = %47, %31
  %60 = call i64 (...) @cpu_class_is_omap2()
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load i64, i64* %10, align 8
  %64 = trunc i64 %63 to i32
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @CSSA(i32 %65)
  %67 = call i32 @dma_write(i32 %64, i32 %66)
  br label %68

68:                                               ; preds = %62, %59
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @CSEI(i32 %70)
  %72 = call i32 @dma_write(i32 %69, i32 %71)
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @CSFI(i32 %74)
  %76 = call i32 @dma_write(i32 %73, i32 %75)
  ret void
}

declare dso_local i64 @cpu_class_is_omap1(...) #1

declare dso_local i32 @dma_read(i32) #1

declare dso_local i32 @CSDP(i32) #1

declare dso_local i32 @dma_write(i32, i32) #1

declare dso_local i32 @CCR(i32) #1

declare dso_local i32 @CSSA_U(i32) #1

declare dso_local i32 @CSSA_L(i32) #1

declare dso_local i64 @cpu_class_is_omap2(...) #1

declare dso_local i32 @CSSA(i32) #1

declare dso_local i32 @CSEI(i32) #1

declare dso_local i32 @CSFI(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
