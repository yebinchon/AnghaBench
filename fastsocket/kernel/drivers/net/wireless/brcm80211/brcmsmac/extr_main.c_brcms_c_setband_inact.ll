; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_c_setband_inact.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_c_setband_inact.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_info = type { i32, %struct.brcms_hardware* }
%struct.brcms_hardware = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"wl%d\0A\00", align 1
@maccontrol = common dso_local global i32 0, align 4
@MCTL_EN_MAC = common dso_local global i32 0, align 4
@OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcms_c_info*, i32)* @brcms_c_setband_inact to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcms_c_setband_inact(%struct.brcms_c_info* %0, i32 %1) #0 {
  %3 = alloca %struct.brcms_c_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.brcms_hardware*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %9 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %8, i32 0, i32 1
  %10 = load %struct.brcms_hardware*, %struct.brcms_hardware** %9, align 8
  store %struct.brcms_hardware* %10, %struct.brcms_hardware** %5, align 8
  %11 = load %struct.brcms_hardware*, %struct.brcms_hardware** %5, align 8
  %12 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.brcms_hardware*, %struct.brcms_hardware** %5, align 8
  %15 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @brcms_dbg_mac80211(i32 %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.brcms_hardware*, %struct.brcms_hardware** %5, align 8
  %19 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @maccontrol, align 4
  %22 = call i32 @D11REGOFFS(i32 %21)
  %23 = call i32 @bcma_read32(i32 %20, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @MCTL_EN_MAC, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @WARN_ON(i32 %28)
  %30 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %31 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @brcms_intrsoff(i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load %struct.brcms_hardware*, %struct.brcms_hardware** %5, align 8
  %35 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @OFF, align 4
  %40 = call i32 @wlc_phy_switch_radio(i32 %38, i32 %39)
  %41 = load %struct.brcms_hardware*, %struct.brcms_hardware** %5, align 8
  %42 = load i32, i32* @OFF, align 4
  %43 = call i32 @brcms_b_core_phy_clk(%struct.brcms_hardware* %41, i32 %42)
  %44 = load %struct.brcms_hardware*, %struct.brcms_hardware** %5, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @brcms_c_setxband(%struct.brcms_hardware* %44, i32 %45)
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local i32 @brcms_dbg_mac80211(i32, i8*, i32) #1

declare dso_local i32 @bcma_read32(i32, i32) #1

declare dso_local i32 @D11REGOFFS(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @brcms_intrsoff(i32) #1

declare dso_local i32 @wlc_phy_switch_radio(i32, i32) #1

declare dso_local i32 @brcms_b_core_phy_clk(%struct.brcms_hardware*, i32) #1

declare dso_local i32 @brcms_c_setxband(%struct.brcms_hardware*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
