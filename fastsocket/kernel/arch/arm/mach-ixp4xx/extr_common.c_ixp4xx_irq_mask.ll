; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ixp4xx/extr_common.c_ixp4xx_irq_mask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ixp4xx/extr_common.c_ixp4xx_irq_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IXP4XX_ICMR2 = common dso_local global i32* null, align 8
@IXP4XX_ICMR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ixp4xx_irq_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixp4xx_irq_mask(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i64 (...) @cpu_is_ixp46x()
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = call i64 (...) @cpu_is_ixp43x()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %5, %1
  %9 = load i32, i32* %2, align 4
  %10 = icmp uge i32 %9, 32
  br i1 %10, label %11, label %19

11:                                               ; preds = %8
  %12 = load i32, i32* %2, align 4
  %13 = sub i32 %12, 32
  %14 = shl i32 1, %13
  %15 = xor i32 %14, -1
  %16 = load i32*, i32** @IXP4XX_ICMR2, align 8
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, %15
  store i32 %18, i32* %16, align 4
  br label %26

19:                                               ; preds = %8, %5
  %20 = load i32, i32* %2, align 4
  %21 = shl i32 1, %20
  %22 = xor i32 %21, -1
  %23 = load i32*, i32** @IXP4XX_ICMR, align 8
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, %22
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %19, %11
  ret void
}

declare dso_local i64 @cpu_is_ixp46x(...) #1

declare dso_local i64 @cpu_is_ixp43x(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
