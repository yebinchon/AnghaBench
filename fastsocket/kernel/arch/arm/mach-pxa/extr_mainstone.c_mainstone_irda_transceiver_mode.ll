; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_mainstone.c_mainstone_irda_transceiver_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_mainstone.c_mainstone_irda_transceiver_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@IR_SIRMODE = common dso_local global i32 0, align 4
@MST_MSCWR1_IRDA_FIR = common dso_local global i32 0, align 4
@MST_MSCWR1 = common dso_local global i32 0, align 4
@IR_FIRMODE = common dso_local global i32 0, align 4
@IR_OFF = common dso_local global i32 0, align 4
@MST_MSCWR1_IRDA_MASK = common dso_local global i32 0, align 4
@MST_MSCWR1_IRDA_OFF = common dso_local global i32 0, align 4
@MST_MSCWR1_IRDA_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i32)* @mainstone_irda_transceiver_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mainstone_irda_transceiver_mode(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i64, i64* %5, align 8
  %7 = call i32 @local_irq_save(i64 %6)
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @IR_SIRMODE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load i32, i32* @MST_MSCWR1_IRDA_FIR, align 4
  %14 = xor i32 %13, -1
  %15 = load i32, i32* @MST_MSCWR1, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* @MST_MSCWR1, align 4
  br label %27

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @IR_FIRMODE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i32, i32* @MST_MSCWR1_IRDA_FIR, align 4
  %24 = load i32, i32* @MST_MSCWR1, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* @MST_MSCWR1, align 4
  br label %26

26:                                               ; preds = %22, %17
  br label %27

27:                                               ; preds = %26, %12
  %28 = load %struct.device*, %struct.device** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @pxa2xx_transceiver_mode(%struct.device* %28, i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @IR_OFF, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %27
  %36 = load i32, i32* @MST_MSCWR1, align 4
  %37 = load i32, i32* @MST_MSCWR1_IRDA_MASK, align 4
  %38 = xor i32 %37, -1
  %39 = and i32 %36, %38
  %40 = load i32, i32* @MST_MSCWR1_IRDA_OFF, align 4
  %41 = or i32 %39, %40
  store i32 %41, i32* @MST_MSCWR1, align 4
  br label %49

42:                                               ; preds = %27
  %43 = load i32, i32* @MST_MSCWR1, align 4
  %44 = load i32, i32* @MST_MSCWR1_IRDA_MASK, align 4
  %45 = xor i32 %44, -1
  %46 = and i32 %43, %45
  %47 = load i32, i32* @MST_MSCWR1_IRDA_FULL, align 4
  %48 = or i32 %46, %47
  store i32 %48, i32* @MST_MSCWR1, align 4
  br label %49

49:                                               ; preds = %42, %35
  %50 = load i64, i64* %5, align 8
  %51 = call i32 @local_irq_restore(i64 %50)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @pxa2xx_transceiver_mode(%struct.device*, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
