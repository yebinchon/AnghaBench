; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_spitz_pm.c_spitz_charge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_spitz_pm.c_spitz_charge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@sharpsl_pm = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@SHARPSL_SUSPENDED = common dso_local global i32 0, align 4
@SPITZ_GPIO_JK_B = common dso_local global i32 0, align 4
@SPITZ_GPIO_CHRG_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @spitz_charge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spitz_charge(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %21

5:                                                ; preds = %1
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sharpsl_pm, i32 0, i32 0), align 4
  %7 = load i32, i32* @SHARPSL_SUSPENDED, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = load i32, i32* @SPITZ_GPIO_JK_B, align 4
  %12 = call i32 @gpio_set_value(i32 %11, i32 1)
  %13 = load i32, i32* @SPITZ_GPIO_CHRG_ON, align 4
  %14 = call i32 @gpio_set_value(i32 %13, i32 0)
  br label %20

15:                                               ; preds = %5
  %16 = load i32, i32* @SPITZ_GPIO_JK_B, align 4
  %17 = call i32 @gpio_set_value(i32 %16, i32 0)
  %18 = load i32, i32* @SPITZ_GPIO_CHRG_ON, align 4
  %19 = call i32 @gpio_set_value(i32 %18, i32 0)
  br label %20

20:                                               ; preds = %15, %10
  br label %26

21:                                               ; preds = %1
  %22 = load i32, i32* @SPITZ_GPIO_JK_B, align 4
  %23 = call i32 @gpio_set_value(i32 %22, i32 0)
  %24 = load i32, i32* @SPITZ_GPIO_CHRG_ON, align 4
  %25 = call i32 @gpio_set_value(i32 %24, i32 1)
  br label %26

26:                                               ; preds = %21, %20
  ret void
}

declare dso_local i32 @gpio_set_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
