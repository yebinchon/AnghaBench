; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_gpio.c_ath5k_hw_set_ledstate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath5k/extr_gpio.c_ath5k_hw_set_ledstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i64 }

@AR5K_AR5210 = common dso_local global i64 0, align 8
@AR5K_PCICFG = common dso_local global i32 0, align 4
@AR5K_PCICFG_LEDMODE = common dso_local global i32 0, align 4
@AR5K_PCICFG_LED = common dso_local global i32 0, align 4
@AR5K_PCICFG_LEDMODE_PROP = common dso_local global i32 0, align 4
@AR5K_PCICFG_LED_PEND = common dso_local global i32 0, align 4
@AR5K_PCICFG_LED_BCTL = common dso_local global i32 0, align 4
@AR5K_PCICFG_LED_NONE = common dso_local global i32 0, align 4
@AR5K_PCICFG_LED_ASSOC = common dso_local global i32 0, align 4
@AR5K_PCICFG_LEDMODE_PROM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath5k_hw_set_ledstate(%struct.ath5k_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ath5k_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %8 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @AR5K_AR5210, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %14 = load i32, i32* @AR5K_PCICFG, align 4
  %15 = load i32, i32* @AR5K_PCICFG_LEDMODE, align 4
  %16 = load i32, i32* @AR5K_PCICFG_LED, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @AR5K_REG_DISABLE_BITS(%struct.ath5k_hw* %13, i32 %14, i32 %17)
  br label %24

19:                                               ; preds = %2
  %20 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %21 = load i32, i32* @AR5K_PCICFG, align 4
  %22 = load i32, i32* @AR5K_PCICFG_LED, align 4
  %23 = call i32 @AR5K_REG_DISABLE_BITS(%struct.ath5k_hw* %20, i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %19, %12
  %25 = load i32, i32* %4, align 4
  switch i32 %25, label %43 [
    i32 128, label %26
    i32 131, label %26
    i32 130, label %33
    i32 132, label %38
    i32 129, label %38
  ]

26:                                               ; preds = %24, %24
  %27 = load i32, i32* @AR5K_PCICFG_LEDMODE_PROP, align 4
  %28 = load i32, i32* @AR5K_PCICFG_LED_PEND, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* @AR5K_PCICFG_LED_PEND, align 4
  %31 = load i32, i32* @AR5K_PCICFG_LED_BCTL, align 4
  %32 = or i32 %30, %31
  store i32 %32, i32* %6, align 4
  br label %48

33:                                               ; preds = %24
  %34 = load i32, i32* @AR5K_PCICFG_LEDMODE_PROP, align 4
  %35 = load i32, i32* @AR5K_PCICFG_LED_NONE, align 4
  %36 = or i32 %34, %35
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* @AR5K_PCICFG_LED_PEND, align 4
  store i32 %37, i32* %6, align 4
  br label %48

38:                                               ; preds = %24, %24
  %39 = load i32, i32* @AR5K_PCICFG_LEDMODE_PROP, align 4
  %40 = load i32, i32* @AR5K_PCICFG_LED_ASSOC, align 4
  %41 = or i32 %39, %40
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* @AR5K_PCICFG_LED_ASSOC, align 4
  store i32 %42, i32* %6, align 4
  br label %48

43:                                               ; preds = %24
  %44 = load i32, i32* @AR5K_PCICFG_LEDMODE_PROM, align 4
  %45 = load i32, i32* @AR5K_PCICFG_LED_NONE, align 4
  %46 = or i32 %44, %45
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* @AR5K_PCICFG_LED_PEND, align 4
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %43, %38, %33, %26
  %49 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %50 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @AR5K_AR5210, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  %55 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %56 = load i32, i32* @AR5K_PCICFG, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw* %55, i32 %56, i32 %57)
  br label %64

59:                                               ; preds = %48
  %60 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %61 = load i32, i32* @AR5K_PCICFG, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw* %60, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %59, %54
  ret void
}

declare dso_local i32 @AR5K_REG_DISABLE_BITS(%struct.ath5k_hw*, i32, i32) #1

declare dso_local i32 @AR5K_REG_ENABLE_BITS(%struct.ath5k_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
