; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_b_up_finish.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_b_up_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_hardware = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@BCMA_CLKMODE_DYNAMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcms_hardware*)* @brcms_b_up_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcms_b_up_finish(%struct.brcms_hardware* %0) #0 {
  %2 = alloca %struct.brcms_hardware*, align 8
  store %struct.brcms_hardware* %0, %struct.brcms_hardware** %2, align 8
  %3 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %4 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %3, i32 0, i32 0
  store i32 1, i32* %4, align 8
  %5 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %6 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %5, i32 0, i32 2
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @wlc_phy_hw_state_upd(i32 %9, i32 1)
  %11 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %12 = load i32, i32* @BCMA_CLKMODE_DYNAMIC, align 4
  %13 = call i32 @brcms_b_clkctl_clk(%struct.brcms_hardware* %11, i32 %12)
  %14 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %15 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @brcms_intrson(i32 %18)
  ret i32 0
}

declare dso_local i32 @wlc_phy_hw_state_upd(i32, i32) #1

declare dso_local i32 @brcms_b_clkctl_clk(%struct.brcms_hardware*, i32) #1

declare dso_local i32 @brcms_intrson(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
