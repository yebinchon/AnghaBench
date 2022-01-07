; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_phy.c_carl9170_init_power_cal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_phy.c_carl9170_init_power_cal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { i32 }

@AR9170_PHY_REG_POWER_TX_RATE_MAX = common dso_local global i32 0, align 4
@AR9170_PHY_REG_POWER_TX_RATE1 = common dso_local global i32 0, align 4
@AR9170_PHY_REG_POWER_TX_RATE2 = common dso_local global i32 0, align 4
@AR9170_PHY_REG_POWER_TX_RATE3 = common dso_local global i32 0, align 4
@AR9170_PHY_REG_POWER_TX_RATE4 = common dso_local global i32 0, align 4
@AR9170_PHY_REG_POWER_TX_RATE5 = common dso_local global i32 0, align 4
@AR9170_PHY_REG_POWER_TX_RATE6 = common dso_local global i32 0, align 4
@AR9170_PHY_REG_POWER_TX_RATE7 = common dso_local global i32 0, align 4
@AR9170_PHY_REG_POWER_TX_RATE8 = common dso_local global i32 0, align 4
@AR9170_PHY_REG_POWER_TX_RATE9 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar9170*)* @carl9170_init_power_cal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @carl9170_init_power_cal(%struct.ar9170* %0) #0 {
  %2 = alloca %struct.ar9170*, align 8
  store %struct.ar9170* %0, %struct.ar9170** %2, align 8
  %3 = load %struct.ar9170*, %struct.ar9170** %2, align 8
  %4 = call i32 @carl9170_regwrite_begin(%struct.ar9170* %3)
  %5 = load i32, i32* @AR9170_PHY_REG_POWER_TX_RATE_MAX, align 4
  %6 = call i32 @carl9170_regwrite(i32 %5, i32 127)
  %7 = load i32, i32* @AR9170_PHY_REG_POWER_TX_RATE1, align 4
  %8 = call i32 @carl9170_regwrite(i32 %7, i32 1061109567)
  %9 = load i32, i32* @AR9170_PHY_REG_POWER_TX_RATE2, align 4
  %10 = call i32 @carl9170_regwrite(i32 %9, i32 1061109567)
  %11 = load i32, i32* @AR9170_PHY_REG_POWER_TX_RATE3, align 4
  %12 = call i32 @carl9170_regwrite(i32 %11, i32 1061109567)
  %13 = load i32, i32* @AR9170_PHY_REG_POWER_TX_RATE4, align 4
  %14 = call i32 @carl9170_regwrite(i32 %13, i32 1061109567)
  %15 = load i32, i32* @AR9170_PHY_REG_POWER_TX_RATE5, align 4
  %16 = call i32 @carl9170_regwrite(i32 %15, i32 1061109567)
  %17 = load i32, i32* @AR9170_PHY_REG_POWER_TX_RATE6, align 4
  %18 = call i32 @carl9170_regwrite(i32 %17, i32 1061109567)
  %19 = load i32, i32* @AR9170_PHY_REG_POWER_TX_RATE7, align 4
  %20 = call i32 @carl9170_regwrite(i32 %19, i32 1061109567)
  %21 = load i32, i32* @AR9170_PHY_REG_POWER_TX_RATE8, align 4
  %22 = call i32 @carl9170_regwrite(i32 %21, i32 1061109567)
  %23 = load i32, i32* @AR9170_PHY_REG_POWER_TX_RATE9, align 4
  %24 = call i32 @carl9170_regwrite(i32 %23, i32 1061109567)
  %25 = call i32 (...) @carl9170_regwrite_finish()
  %26 = call i32 (...) @carl9170_regwrite_result()
  ret i32 %26
}

declare dso_local i32 @carl9170_regwrite_begin(%struct.ar9170*) #1

declare dso_local i32 @carl9170_regwrite(i32, i32) #1

declare dso_local i32 @carl9170_regwrite_finish(...) #1

declare dso_local i32 @carl9170_regwrite_result(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
