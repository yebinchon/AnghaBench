; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_c_coredisable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_c_coredisable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_hardware = type { i32, %struct.TYPE_2__*, i32, i64, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"wl%d: disable core\0A\00", align 1
@OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_hardware*)* @brcms_c_coredisable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcms_c_coredisable(%struct.brcms_hardware* %0) #0 {
  %2 = alloca %struct.brcms_hardware*, align 8
  %3 = alloca i32, align 4
  store %struct.brcms_hardware* %0, %struct.brcms_hardware** %2, align 8
  %4 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %5 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %8 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @brcms_dbg_info(i32 %6, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %12 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @brcms_deviceremoved(i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %53

18:                                               ; preds = %1
  %19 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %20 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %53

24:                                               ; preds = %18
  %25 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %26 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @OFF, align 4
  %31 = call i32 @wlc_phy_switch_radio(i32 %29, i32 %30)
  %32 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %33 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @OFF, align 4
  %38 = call i32 @wlc_phy_anacore(i32 %36, i32 %37)
  %39 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %40 = call i32 @brcms_b_core_phypll_ctl(%struct.brcms_hardware* %39, i32 0)
  %41 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %42 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %41, i32 0, i32 0
  store i32 0, i32* %42, align 8
  %43 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %44 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @bcma_core_disable(i32 %45, i32 0)
  %47 = load %struct.brcms_hardware*, %struct.brcms_hardware** %2, align 8
  %48 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @wlc_phy_hw_clk_state_upd(i32 %51, i32 0)
  br label %53

53:                                               ; preds = %24, %23, %17
  ret void
}

declare dso_local i32 @brcms_dbg_info(i32, i8*, i32) #1

declare dso_local i32 @brcms_deviceremoved(i32) #1

declare dso_local i32 @wlc_phy_switch_radio(i32, i32) #1

declare dso_local i32 @wlc_phy_anacore(i32, i32) #1

declare dso_local i32 @brcms_b_core_phypll_ctl(%struct.brcms_hardware*, i32) #1

declare dso_local i32 @bcma_core_disable(i32, i32) #1

declare dso_local i32 @wlc_phy_hw_clk_state_upd(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
