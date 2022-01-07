; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_led_band_off.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_led_band_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { i32, i64, i32, i32, i32 }

@CFG_NO_LED = common dso_local global i32 0, align 4
@EEPROM_NIC_TYPE_1 = common dso_local global i64 0, align 8
@IPW_EVENT_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Reg: 0x%08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipw_priv*)* @ipw_led_band_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipw_led_band_off(%struct.ipw_priv* %0) #0 {
  %2 = alloca %struct.ipw_priv*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.ipw_priv* %0, %struct.ipw_priv** %2, align 8
  %5 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %6 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @CFG_NO_LED, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %13 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @EEPROM_NIC_TYPE_1, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11, %1
  br label %48

18:                                               ; preds = %11
  %19 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %20 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %19, i32 0, i32 2
  %21 = load i64, i64* %3, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %24 = load i32, i32* @IPW_EVENT_REG, align 4
  %25 = call i32 @ipw_read_reg32(%struct.ipw_priv* %23, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %27 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %4, align 4
  %31 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %32 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %4, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @ipw_register_toggle(i32 %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @IPW_DEBUG_LED(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %41 = load i32, i32* @IPW_EVENT_REG, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @ipw_write_reg32(%struct.ipw_priv* %40, i32 %41, i32 %42)
  %44 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %45 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %44, i32 0, i32 2
  %46 = load i64, i64* %3, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  br label %48

48:                                               ; preds = %18, %17
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ipw_read_reg32(%struct.ipw_priv*, i32) #1

declare dso_local i32 @ipw_register_toggle(i32) #1

declare dso_local i32 @IPW_DEBUG_LED(i8*, i32) #1

declare dso_local i32 @ipw_write_reg32(%struct.ipw_priv*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
