; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/boards/mach-se/7206/extr_irq.c_enable_se7206_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/boards/mach-se/7206/extr_irq.c_enable_se7206_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INTC_IPR01 = common dso_local global i32 0, align 4
@INTMSK0 = common dso_local global i32 0, align 4
@INTMSK1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @enable_se7206_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_se7206_irq(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = sub i32 130, %7
  %9 = sub i32 3, %8
  %10 = mul i32 4, %9
  %11 = shl i32 1, %10
  %12 = trunc i32 %11 to i16
  store i16 %12, i16* %4, align 2
  %13 = load i32, i32* @INTC_IPR01, align 4
  %14 = call zeroext i16 @ctrl_inw(i32 %13)
  store i16 %14, i16* %3, align 2
  %15 = load i16, i16* %4, align 2
  %16 = zext i16 %15 to i32
  %17 = load i16, i16* %3, align 2
  %18 = zext i16 %17 to i32
  %19 = or i32 %18, %16
  %20 = trunc i32 %19 to i16
  store i16 %20, i16* %3, align 2
  %21 = load i16, i16* %3, align 2
  %22 = load i32, i32* @INTC_IPR01, align 4
  %23 = call i32 @ctrl_outw(i16 zeroext %21, i32 %22)
  %24 = load i32, i32* @INTMSK0, align 4
  %25 = call zeroext i16 @ctrl_inw(i32 %24)
  store i16 %25, i16* %5, align 2
  %26 = load i32, i32* @INTMSK1, align 4
  %27 = call zeroext i16 @ctrl_inw(i32 %26)
  store i16 %27, i16* %6, align 2
  %28 = load i32, i32* %2, align 4
  switch i32 %28, label %48 [
    i32 130, label %29
    i32 129, label %34
    i32 128, label %39
  ]

29:                                               ; preds = %1
  %30 = load i16, i16* %5, align 2
  %31 = zext i16 %30 to i32
  %32 = and i32 %31, -17
  %33 = trunc i32 %32 to i16
  store i16 %33, i16* %5, align 2
  br label %48

34:                                               ; preds = %1
  %35 = load i16, i16* %5, align 2
  %36 = zext i16 %35 to i32
  %37 = and i32 %36, -16
  %38 = trunc i32 %37 to i16
  store i16 %38, i16* %5, align 2
  br label %48

39:                                               ; preds = %1
  %40 = load i16, i16* %5, align 2
  %41 = zext i16 %40 to i32
  %42 = and i32 %41, -3841
  %43 = trunc i32 %42 to i16
  store i16 %43, i16* %5, align 2
  %44 = load i16, i16* %6, align 2
  %45 = zext i16 %44 to i32
  %46 = and i32 %45, -256
  %47 = trunc i32 %46 to i16
  store i16 %47, i16* %6, align 2
  br label %48

48:                                               ; preds = %1, %39, %34, %29
  %49 = load i16, i16* %5, align 2
  %50 = load i32, i32* @INTMSK0, align 4
  %51 = call i32 @ctrl_outw(i16 zeroext %49, i32 %50)
  %52 = load i16, i16* %6, align 2
  %53 = load i32, i32* @INTMSK1, align 4
  %54 = call i32 @ctrl_outw(i16 zeroext %52, i32 %53)
  ret void
}

declare dso_local zeroext i16 @ctrl_inw(i32) #1

declare dso_local i32 @ctrl_outw(i16 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
