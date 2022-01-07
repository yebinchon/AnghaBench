; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/boards/mach-se/7206/extr_irq.c_disable_se7206_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/boards/mach-se/7206/extr_irq.c_disable_se7206_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INTC_IPR01 = common dso_local global i32 0, align 4
@INTMSK0 = common dso_local global i32 0, align 4
@INTMSK1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @disable_se7206_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disable_se7206_irq(i32 %0) #0 {
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
  %11 = shl i32 15, %10
  %12 = xor i32 65535, %11
  %13 = trunc i32 %12 to i16
  store i16 %13, i16* %4, align 2
  %14 = load i32, i32* @INTC_IPR01, align 4
  %15 = call zeroext i16 @ctrl_inw(i32 %14)
  store i16 %15, i16* %3, align 2
  %16 = load i16, i16* %4, align 2
  %17 = zext i16 %16 to i32
  %18 = load i16, i16* %3, align 2
  %19 = zext i16 %18 to i32
  %20 = and i32 %19, %17
  %21 = trunc i32 %20 to i16
  store i16 %21, i16* %3, align 2
  %22 = load i16, i16* %3, align 2
  %23 = load i32, i32* @INTC_IPR01, align 4
  %24 = call i32 @ctrl_outw(i16 zeroext %22, i32 %23)
  %25 = load i32, i32* @INTMSK0, align 4
  %26 = call zeroext i16 @ctrl_inw(i32 %25)
  store i16 %26, i16* %5, align 2
  %27 = load i32, i32* @INTMSK1, align 4
  %28 = call zeroext i16 @ctrl_inw(i32 %27)
  store i16 %28, i16* %6, align 2
  %29 = load i32, i32* %2, align 4
  switch i32 %29, label %49 [
    i32 130, label %30
    i32 129, label %35
    i32 128, label %40
  ]

30:                                               ; preds = %1
  %31 = load i16, i16* %5, align 2
  %32 = zext i16 %31 to i32
  %33 = or i32 %32, 16
  %34 = trunc i32 %33 to i16
  store i16 %34, i16* %5, align 2
  br label %49

35:                                               ; preds = %1
  %36 = load i16, i16* %5, align 2
  %37 = zext i16 %36 to i32
  %38 = or i32 %37, 15
  %39 = trunc i32 %38 to i16
  store i16 %39, i16* %5, align 2
  br label %49

40:                                               ; preds = %1
  %41 = load i16, i16* %5, align 2
  %42 = zext i16 %41 to i32
  %43 = or i32 %42, 3840
  %44 = trunc i32 %43 to i16
  store i16 %44, i16* %5, align 2
  %45 = load i16, i16* %6, align 2
  %46 = zext i16 %45 to i32
  %47 = or i32 %46, 255
  %48 = trunc i32 %47 to i16
  store i16 %48, i16* %6, align 2
  br label %49

49:                                               ; preds = %1, %40, %35, %30
  %50 = load i16, i16* %5, align 2
  %51 = load i32, i32* @INTMSK0, align 4
  %52 = call i32 @ctrl_outw(i16 zeroext %50, i32 %51)
  %53 = load i16, i16* %6, align 2
  %54 = load i32, i32* @INTMSK1, align 4
  %55 = call i32 @ctrl_outw(i16 zeroext %53, i32 %54)
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
