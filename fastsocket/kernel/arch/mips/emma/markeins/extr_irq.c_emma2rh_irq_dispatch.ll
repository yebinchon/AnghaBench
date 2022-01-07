; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/emma/markeins/extr_irq.c_emma2rh_irq_dispatch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/emma/markeins/extr_irq.c_emma2rh_irq_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EMMA2RH_BHIF_INT_ST_0 = common dso_local global i32 0, align 4
@EMMA2RH_BHIF_INT_EN_0 = common dso_local global i32 0, align 4
@EMMA2RH_IRQ_BASE = common dso_local global i64 0, align 8
@EMMA2RH_BHIF_INT_ST_1 = common dso_local global i32 0, align 4
@EMMA2RH_BHIF_INT_EN_1 = common dso_local global i32 0, align 4
@EMMA2RH_BHIF_INT_ST_2 = common dso_local global i32 0, align 4
@EMMA2RH_BHIF_INT_EN_2 = common dso_local global i32 0, align 4
@EMMA2RH_BHIF_SW_INT = common dso_local global i32 0, align 4
@EMMA2RH_BHIF_SW_INT_EN = common dso_local global i32 0, align 4
@EMMA2RH_GPIO_CASCADE = common dso_local global i32 0, align 4
@EMMA2RH_GPIO_INT_MASK = common dso_local global i32 0, align 4
@EMMA2RH_GPIO_INT_ST = common dso_local global i32 0, align 4
@EMMA2RH_GPIO_IRQ_BASE = common dso_local global i64 0, align 8
@EMMA2RH_SW_CASCADE = common dso_local global i64 0, align 8
@EMMA2RH_SW_IRQ_BASE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emma2rh_irq_dispatch() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = load i32, i32* @EMMA2RH_BHIF_INT_ST_0, align 4
  %5 = call i64 @emma2rh_in32(i32 %4)
  %6 = load i32, i32* @EMMA2RH_BHIF_INT_EN_0, align 4
  %7 = call i64 @emma2rh_in32(i32 %6)
  %8 = and i64 %5, %7
  store i64 %8, i64* %1, align 8
  store i64 0, i64* %3, align 8
  store i64 1, i64* %2, align 8
  br label %9

9:                                                ; preds = %23, %0
  %10 = load i64, i64* %3, align 8
  %11 = icmp ult i64 %10, 32
  br i1 %11, label %12, label %28

12:                                               ; preds = %9
  %13 = load i64, i64* %1, align 8
  %14 = load i64, i64* %2, align 8
  %15 = and i64 %13, %14
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load i64, i64* @EMMA2RH_IRQ_BASE, align 8
  %19 = load i64, i64* %3, align 8
  %20 = add i64 %18, %19
  %21 = call i32 @do_IRQ(i64 %20)
  br label %78

22:                                               ; preds = %12
  br label %23

23:                                               ; preds = %22
  %24 = load i64, i64* %3, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %3, align 8
  %26 = load i64, i64* %2, align 8
  %27 = shl i64 %26, 1
  store i64 %27, i64* %2, align 8
  br label %9

28:                                               ; preds = %9
  %29 = load i32, i32* @EMMA2RH_BHIF_INT_ST_1, align 4
  %30 = call i64 @emma2rh_in32(i32 %29)
  %31 = load i32, i32* @EMMA2RH_BHIF_INT_EN_1, align 4
  %32 = call i64 @emma2rh_in32(i32 %31)
  %33 = and i64 %30, %32
  store i64 %33, i64* %1, align 8
  store i64 32, i64* %3, align 8
  store i64 1, i64* %2, align 8
  br label %34

34:                                               ; preds = %48, %28
  %35 = load i64, i64* %3, align 8
  %36 = icmp ult i64 %35, 64
  br i1 %36, label %37, label %53

37:                                               ; preds = %34
  %38 = load i64, i64* %1, align 8
  %39 = load i64, i64* %2, align 8
  %40 = and i64 %38, %39
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load i64, i64* @EMMA2RH_IRQ_BASE, align 8
  %44 = load i64, i64* %3, align 8
  %45 = add i64 %43, %44
  %46 = call i32 @do_IRQ(i64 %45)
  br label %78

47:                                               ; preds = %37
  br label %48

48:                                               ; preds = %47
  %49 = load i64, i64* %3, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %3, align 8
  %51 = load i64, i64* %2, align 8
  %52 = shl i64 %51, 1
  store i64 %52, i64* %2, align 8
  br label %34

53:                                               ; preds = %34
  %54 = load i32, i32* @EMMA2RH_BHIF_INT_ST_2, align 4
  %55 = call i64 @emma2rh_in32(i32 %54)
  %56 = load i32, i32* @EMMA2RH_BHIF_INT_EN_2, align 4
  %57 = call i64 @emma2rh_in32(i32 %56)
  %58 = and i64 %55, %57
  store i64 %58, i64* %1, align 8
  store i64 64, i64* %3, align 8
  store i64 1, i64* %2, align 8
  br label %59

59:                                               ; preds = %73, %53
  %60 = load i64, i64* %3, align 8
  %61 = icmp ult i64 %60, 96
  br i1 %61, label %62, label %78

62:                                               ; preds = %59
  %63 = load i64, i64* %1, align 8
  %64 = load i64, i64* %2, align 8
  %65 = and i64 %63, %64
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load i64, i64* @EMMA2RH_IRQ_BASE, align 8
  %69 = load i64, i64* %3, align 8
  %70 = add i64 %68, %69
  %71 = call i32 @do_IRQ(i64 %70)
  br label %78

72:                                               ; preds = %62
  br label %73

73:                                               ; preds = %72
  %74 = load i64, i64* %3, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %3, align 8
  %76 = load i64, i64* %2, align 8
  %77 = shl i64 %76, 1
  store i64 %77, i64* %2, align 8
  br label %59

78:                                               ; preds = %17, %42, %67, %59
  ret void
}

declare dso_local i64 @emma2rh_in32(i32) #1

declare dso_local i32 @do_IRQ(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
