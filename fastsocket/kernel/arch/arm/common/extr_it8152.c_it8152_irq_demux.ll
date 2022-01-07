; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/common/extr_it8152.c_it8152_irq_demux.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/common/extr_it8152.c_it8152_irq_demux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }

@IT8152_INTC_PDCNIRR = common dso_local global i32 0, align 4
@IT8152_INTC_LPCNIRR = common dso_local global i32 0, align 4
@IT8152_INTC_LDCNIRR = common dso_local global i32 0, align 4
@IT8152_PD_IRQ_COUNT = common dso_local global i32 0, align 4
@IT8152_LP_IRQ_COUNT = common dso_local global i32 0, align 4
@IT8152_LD_IRQ_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @it8152_irq_demux(i32 %0, %struct.irq_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.irq_desc* %1, %struct.irq_desc** %4, align 8
  br label %9

9:                                                ; preds = %2, %109
  %10 = load i32, i32* @IT8152_INTC_PDCNIRR, align 4
  %11 = call i32 @__raw_readl(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @IT8152_INTC_LPCNIRR, align 4
  %13 = call i32 @__raw_readl(i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @IT8152_INTC_LDCNIRR, align 4
  %15 = call i32 @__raw_readl(i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %5, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* @IT8152_INTC_PDCNIRR, align 4
  %19 = call i32 @__raw_writel(i32 %17, i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* @IT8152_INTC_LPCNIRR, align 4
  %23 = call i32 @__raw_writel(i32 %21, i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* @IT8152_INTC_LDCNIRR, align 4
  %27 = call i32 @__raw_writel(i32 %25, i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %6, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* %5, align 4
  %32 = or i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %49, label %34

34:                                               ; preds = %9
  %35 = load i32, i32* @IT8152_INTC_PDCNIRR, align 4
  %36 = call i32 @__raw_readl(i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* @IT8152_INTC_LPCNIRR, align 4
  %38 = call i32 @__raw_readl(i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* @IT8152_INTC_LDCNIRR, align 4
  %40 = call i32 @__raw_readl(i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %6, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* %5, align 4
  %45 = or i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %34
  ret void

48:                                               ; preds = %34
  br label %49

49:                                               ; preds = %48, %9
  %50 = load i32, i32* @IT8152_PD_IRQ_COUNT, align 4
  %51 = shl i32 1, %50
  %52 = sub nsw i32 %51, 1
  %53 = load i32, i32* %5, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %58, %49
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %55
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @__ffs(i32 %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @IT8152_PD_IRQ(i32 %61)
  %63 = call i32 @generic_handle_irq(i32 %62)
  %64 = load i32, i32* %8, align 4
  %65 = shl i32 1, %64
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %5, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %5, align 4
  br label %55

69:                                               ; preds = %55
  %70 = load i32, i32* @IT8152_LP_IRQ_COUNT, align 4
  %71 = shl i32 1, %70
  %72 = sub nsw i32 %71, 1
  %73 = load i32, i32* %6, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %78, %69
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %75
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @__ffs(i32 %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @IT8152_LP_IRQ(i32 %81)
  %83 = call i32 @generic_handle_irq(i32 %82)
  %84 = load i32, i32* %8, align 4
  %85 = shl i32 1, %84
  %86 = xor i32 %85, -1
  %87 = load i32, i32* %6, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %6, align 4
  br label %75

89:                                               ; preds = %75
  %90 = load i32, i32* @IT8152_LD_IRQ_COUNT, align 4
  %91 = shl i32 1, %90
  %92 = sub nsw i32 %91, 1
  %93 = load i32, i32* %7, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %7, align 4
  br label %95

95:                                               ; preds = %98, %89
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %109

98:                                               ; preds = %95
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @__ffs(i32 %99)
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @IT8152_LD_IRQ(i32 %101)
  %103 = call i32 @generic_handle_irq(i32 %102)
  %104 = load i32, i32* %8, align 4
  %105 = shl i32 1, %104
  %106 = xor i32 %105, -1
  %107 = load i32, i32* %7, align 4
  %108 = and i32 %107, %106
  store i32 %108, i32* %7, align 4
  br label %95

109:                                              ; preds = %95
  br label %9
}

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @__raw_writel(i32, i32) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @generic_handle_irq(i32) #1

declare dso_local i32 @IT8152_PD_IRQ(i32) #1

declare dso_local i32 @IT8152_LP_IRQ(i32) #1

declare dso_local i32 @IT8152_LD_IRQ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
