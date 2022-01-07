; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_mfgpt_32.c_geode_mfgpt_set_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_mfgpt_32.c_geode_mfgpt_set_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MFGPT_MAX_TIMERS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@MSR_PIC_ZSEL_LOW = common dso_local global i32 0, align 4
@MFGPT_CMP1 = common dso_local global i32 0, align 4
@MFGPT_DEFAULT_IRQ = common dso_local global i32 0, align 4
@MSR_PIC_IRQM_LPC = common dso_local global i32 0, align 4
@MFGPT_EVENT_IRQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @geode_mfgpt_set_irq(i32 %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @MFGPT_MAX_TIMERS, align 4
  %19 = icmp sge i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16, %4
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %120

23:                                               ; preds = %16
  %24 = load i32, i32* @MSR_PIC_ZSEL_LOW, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %12, align 4
  %27 = call i32 @rdmsr(i32 %24, i32 %25, i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @MFGPT_CMP1, align 4
  %30 = icmp eq i32 %28, %29
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 0, i32 4
  %33 = load i32, i32* %6, align 4
  %34 = srem i32 %33, 4
  %35 = add nsw i32 %32, %34
  %36 = mul nsw i32 %35, 4
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %13, align 4
  %39 = ashr i32 %37, %38
  %40 = and i32 %39, 15
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %42, label %45

42:                                               ; preds = %23
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %120

45:                                               ; preds = %23
  %46 = load i32*, i32** %8, align 8
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %13, align 4
  %52 = ashr i32 %50, %51
  %53 = and i32 %52, 15
  %54 = load i32*, i32** %8, align 8
  store i32 %53, i32* %54, align 4
  br label %55

55:                                               ; preds = %49, %45
  %56 = load i32*, i32** %8, align 8
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* @MFGPT_DEFAULT_IRQ, align 4
  %61 = load i32*, i32** %8, align 8
  store i32 %60, i32* %61, align 4
  br label %62

62:                                               ; preds = %59, %55
  %63 = load i32*, i32** %8, align 8
  %64 = load i32, i32* %63, align 4
  %65 = icmp slt i32 %64, 1
  br i1 %65, label %74, label %66

66:                                               ; preds = %62
  %67 = load i32*, i32** %8, align 8
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 2
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = load i32*, i32** %8, align 8
  %72 = load i32, i32* %71, align 4
  %73 = icmp sgt i32 %72, 15
  br i1 %73, label %74, label %77

74:                                               ; preds = %70, %66, %62
  %75 = load i32, i32* @EIO, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %5, align 4
  br label %120

77:                                               ; preds = %70
  %78 = load i32, i32* @MSR_PIC_IRQM_LPC, align 4
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %12, align 4
  %81 = call i32 @rdmsr(i32 %78, i32 %79, i32 %80)
  %82 = load i32, i32* %11, align 4
  %83 = load i32*, i32** %8, align 8
  %84 = load i32, i32* %83, align 4
  %85 = shl i32 1, %84
  %86 = and i32 %82, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %77
  %89 = load i32, i32* @EIO, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %5, align 4
  br label %120

91:                                               ; preds = %77
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @MFGPT_EVENT_IRQ, align 4
  %95 = load i32, i32* %9, align 4
  %96 = call i64 @geode_mfgpt_toggle_event(i32 %92, i32 %93, i32 %94, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %91
  %99 = load i32, i32* @EIO, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %5, align 4
  br label %120

101:                                              ; preds = %91
  %102 = load i32, i32* %9, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %119

104:                                              ; preds = %101
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* %13, align 4
  %107 = shl i32 15, %106
  %108 = xor i32 %107, -1
  %109 = and i32 %105, %108
  %110 = load i32*, i32** %8, align 8
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %13, align 4
  %113 = shl i32 %111, %112
  %114 = or i32 %109, %113
  store i32 %114, i32* %10, align 4
  %115 = load i32, i32* @MSR_PIC_ZSEL_LOW, align 4
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* %12, align 4
  %118 = call i32 @wrmsr(i32 %115, i32 %116, i32 %117)
  br label %119

119:                                              ; preds = %104, %101
  store i32 0, i32* %5, align 4
  br label %120

120:                                              ; preds = %119, %98, %88, %74, %42, %20
  %121 = load i32, i32* %5, align 4
  ret i32 %121
}

declare dso_local i32 @rdmsr(i32, i32, i32) #1

declare dso_local i64 @geode_mfgpt_toggle_event(i32, i32, i32, i32) #1

declare dso_local i32 @wrmsr(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
