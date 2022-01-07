; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_r8169.c_rtl8105e_hw_phy_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_r8169.c_rtl8105e_hw_phy_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_reg = type { i32, i32 }
%struct.rtl8169_private = type { i32 }

@rtl8105e_hw_phy_config.phy_reg_init = internal constant [9 x %struct.phy_reg] [%struct.phy_reg { i32 31, i32 5 }, %struct.phy_reg { i32 26, i32 0 }, %struct.phy_reg { i32 31, i32 0 }, %struct.phy_reg { i32 31, i32 4 }, %struct.phy_reg { i32 28, i32 0 }, %struct.phy_reg { i32 31, i32 0 }, %struct.phy_reg { i32 31, i32 1 }, %struct.phy_reg { i32 21, i32 30465 }, %struct.phy_reg { i32 31, i32 0 }], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8169_private*)* @rtl8105e_hw_phy_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8105e_hw_phy_config(%struct.rtl8169_private* %0) #0 {
  %2 = alloca %struct.rtl8169_private*, align 8
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %2, align 8
  %3 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %4 = call i32 @rtl_writephy(%struct.rtl8169_private* %3, i32 31, i32 0)
  %5 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %6 = call i32 @rtl_writephy(%struct.rtl8169_private* %5, i32 24, i32 784)
  %7 = call i32 @msleep(i32 100)
  %8 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %9 = call i32 @rtl_apply_firmware(%struct.rtl8169_private* %8)
  %10 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %11 = call i32 @ARRAY_SIZE(%struct.phy_reg* getelementptr inbounds ([9 x %struct.phy_reg], [9 x %struct.phy_reg]* @rtl8105e_hw_phy_config.phy_reg_init, i64 0, i64 0))
  %12 = call i32 @rtl_writephy_batch(%struct.rtl8169_private* %10, %struct.phy_reg* getelementptr inbounds ([9 x %struct.phy_reg], [9 x %struct.phy_reg]* @rtl8105e_hw_phy_config.phy_reg_init, i64 0, i64 0), i32 %11)
  ret void
}

declare dso_local i32 @rtl_writephy(%struct.rtl8169_private*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @rtl_apply_firmware(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl_writephy_batch(%struct.rtl8169_private*, %struct.phy_reg*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.phy_reg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
