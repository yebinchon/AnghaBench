; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ixp4xx/extr_common.c_ixp4xx_irq_unmask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ixp4xx/extr_common.c_ixp4xx_irq_unmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ixp4xx_irq_edge = common dso_local global i32 0, align 4
@IXP4XX_ICMR2 = common dso_local global i32* null, align 8
@IXP4XX_ICMR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ixp4xx_irq_unmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixp4xx_irq_unmask(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @ixp4xx_irq_edge, align 4
  %4 = load i32, i32* %2, align 4
  %5 = shl i32 1, %4
  %6 = and i32 %3, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @ixp4xx_irq_ack(i32 %9)
  br label %11

11:                                               ; preds = %8, %1
  %12 = call i64 (...) @cpu_is_ixp46x()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = call i64 (...) @cpu_is_ixp43x()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %14, %11
  %18 = load i32, i32* %2, align 4
  %19 = icmp uge i32 %18, 32
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = load i32, i32* %2, align 4
  %22 = sub i32 %21, 32
  %23 = shl i32 1, %22
  %24 = load i32*, i32** @IXP4XX_ICMR2, align 8
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %23
  store i32 %26, i32* %24, align 4
  br label %33

27:                                               ; preds = %17, %14
  %28 = load i32, i32* %2, align 4
  %29 = shl i32 1, %28
  %30 = load i32*, i32** @IXP4XX_ICMR, align 8
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %29
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %27, %20
  ret void
}

declare dso_local i32 @ixp4xx_irq_ack(i32) #1

declare dso_local i64 @cpu_is_ixp46x(...) #1

declare dso_local i64 @cpu_is_ixp43x(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
