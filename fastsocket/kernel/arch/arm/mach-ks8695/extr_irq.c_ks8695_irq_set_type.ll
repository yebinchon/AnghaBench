; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ks8695/extr_irq.c_ks8695_irq_set_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ks8695/extr_irq.c_ks8695_irq_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KS8695_GPIO_VA = common dso_local global i64 0, align 8
@KS8695_IOPC = common dso_local global i64 0, align 8
@IOPC_TM_HIGH = common dso_local global i64 0, align 8
@IOPC_TM_LOW = common dso_local global i64 0, align 8
@IOPC_TM_RISING = common dso_local global i64 0, align 8
@IOPC_TM_FALLING = common dso_local global i64 0, align 8
@IOPC_TM_EDGE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IOPC_IOEINT0TM = common dso_local global i64 0, align 8
@IOPC_IOEINT1TM = common dso_local global i64 0, align 8
@IOPC_IOEINT2TM = common dso_local global i64 0, align 8
@IOPC_IOEINT3TM = common dso_local global i64 0, align 8
@ks8695_irq_level_chip = common dso_local global i32 0, align 4
@handle_level_irq = common dso_local global i32 0, align 4
@ks8695_irq_edge_chip = common dso_local global i32 0, align 4
@handle_edge_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ks8695_irq_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ks8695_irq_set_type(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i16, align 2
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i16 0, i16* %8, align 2
  %9 = load i64, i64* @KS8695_GPIO_VA, align 8
  %10 = load i64, i64* @KS8695_IOPC, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i64 @__raw_readl(i64 %11)
  store i64 %12, i64* %6, align 8
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %24 [
    i32 133, label %14
    i32 132, label %16
    i32 134, label %18
    i32 135, label %20
    i32 136, label %22
  ]

14:                                               ; preds = %2
  %15 = load i64, i64* @IOPC_TM_HIGH, align 8
  store i64 %15, i64* %7, align 8
  store i16 1, i16* %8, align 2
  br label %27

16:                                               ; preds = %2
  %17 = load i64, i64* @IOPC_TM_LOW, align 8
  store i64 %17, i64* %7, align 8
  store i16 1, i16* %8, align 2
  br label %27

18:                                               ; preds = %2
  %19 = load i64, i64* @IOPC_TM_RISING, align 8
  store i64 %19, i64* %7, align 8
  br label %27

20:                                               ; preds = %2
  %21 = load i64, i64* @IOPC_TM_FALLING, align 8
  store i64 %21, i64* %7, align 8
  br label %27

22:                                               ; preds = %2
  %23 = load i64, i64* @IOPC_TM_EDGE, align 8
  store i64 %23, i64* %7, align 8
  br label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %89

27:                                               ; preds = %22, %20, %18, %16, %14
  %28 = load i32, i32* %4, align 4
  switch i32 %28, label %65 [
    i32 131, label %29
    i32 130, label %38
    i32 129, label %47
    i32 128, label %56
  ]

29:                                               ; preds = %27
  %30 = load i64, i64* @IOPC_IOEINT0TM, align 8
  %31 = xor i64 %30, -1
  %32 = load i64, i64* %6, align 8
  %33 = and i64 %32, %31
  store i64 %33, i64* %6, align 8
  %34 = load i64, i64* %7, align 8
  %35 = call i64 @IOPC_IOEINT0_MODE(i64 %34)
  %36 = load i64, i64* %6, align 8
  %37 = or i64 %36, %35
  store i64 %37, i64* %6, align 8
  br label %68

38:                                               ; preds = %27
  %39 = load i64, i64* @IOPC_IOEINT1TM, align 8
  %40 = xor i64 %39, -1
  %41 = load i64, i64* %6, align 8
  %42 = and i64 %41, %40
  store i64 %42, i64* %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = call i64 @IOPC_IOEINT1_MODE(i64 %43)
  %45 = load i64, i64* %6, align 8
  %46 = or i64 %45, %44
  store i64 %46, i64* %6, align 8
  br label %68

47:                                               ; preds = %27
  %48 = load i64, i64* @IOPC_IOEINT2TM, align 8
  %49 = xor i64 %48, -1
  %50 = load i64, i64* %6, align 8
  %51 = and i64 %50, %49
  store i64 %51, i64* %6, align 8
  %52 = load i64, i64* %7, align 8
  %53 = call i64 @IOPC_IOEINT2_MODE(i64 %52)
  %54 = load i64, i64* %6, align 8
  %55 = or i64 %54, %53
  store i64 %55, i64* %6, align 8
  br label %68

56:                                               ; preds = %27
  %57 = load i64, i64* @IOPC_IOEINT3TM, align 8
  %58 = xor i64 %57, -1
  %59 = load i64, i64* %6, align 8
  %60 = and i64 %59, %58
  store i64 %60, i64* %6, align 8
  %61 = load i64, i64* %7, align 8
  %62 = call i64 @IOPC_IOEINT3_MODE(i64 %61)
  %63 = load i64, i64* %6, align 8
  %64 = or i64 %63, %62
  store i64 %64, i64* %6, align 8
  br label %68

65:                                               ; preds = %27
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %89

68:                                               ; preds = %56, %47, %38, %29
  %69 = load i16, i16* %8, align 2
  %70 = icmp ne i16 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @set_irq_chip(i32 %72, i32* @ks8695_irq_level_chip)
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @handle_level_irq, align 4
  %76 = call i32 @set_irq_handler(i32 %74, i32 %75)
  br label %83

77:                                               ; preds = %68
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @set_irq_chip(i32 %78, i32* @ks8695_irq_edge_chip)
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @handle_edge_irq, align 4
  %82 = call i32 @set_irq_handler(i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %77, %71
  %84 = load i64, i64* %6, align 8
  %85 = load i64, i64* @KS8695_GPIO_VA, align 8
  %86 = load i64, i64* @KS8695_IOPC, align 8
  %87 = add nsw i64 %85, %86
  %88 = call i32 @__raw_writel(i64 %84, i64 %87)
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %83, %65, %24
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i64 @__raw_readl(i64) #1

declare dso_local i64 @IOPC_IOEINT0_MODE(i64) #1

declare dso_local i64 @IOPC_IOEINT1_MODE(i64) #1

declare dso_local i64 @IOPC_IOEINT2_MODE(i64) #1

declare dso_local i64 @IOPC_IOEINT3_MODE(i64) #1

declare dso_local i32 @set_irq_chip(i32, i32*) #1

declare dso_local i32 @set_irq_handler(i32, i32) #1

declare dso_local i32 @__raw_writel(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
