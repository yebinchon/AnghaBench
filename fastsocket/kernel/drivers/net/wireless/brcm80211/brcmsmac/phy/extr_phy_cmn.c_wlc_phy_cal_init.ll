; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_cal_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_cal_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy_pub = type { i32 }
%struct.brcms_phy = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { void (%struct.brcms_phy.0*)* }
%struct.brcms_phy.0 = type opaque

@maccontrol = common dso_local global i32 0, align 4
@MCTL_EN_MAC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"HW error: MAC enabled during phy cal\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlc_phy_cal_init(%struct.brcms_phy_pub* %0) #0 {
  %2 = alloca %struct.brcms_phy_pub*, align 8
  %3 = alloca %struct.brcms_phy*, align 8
  %4 = alloca void (%struct.brcms_phy*)*, align 8
  store %struct.brcms_phy_pub* %0, %struct.brcms_phy_pub** %2, align 8
  %5 = load %struct.brcms_phy_pub*, %struct.brcms_phy_pub** %2, align 8
  %6 = bitcast %struct.brcms_phy_pub* %5 to %struct.brcms_phy*
  store %struct.brcms_phy* %6, %struct.brcms_phy** %3, align 8
  store void (%struct.brcms_phy*)* null, void (%struct.brcms_phy*)** %4, align 8
  %7 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %8 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @maccontrol, align 4
  %11 = call i32 @D11REGOFFS(i32 %10)
  %12 = call i32 @bcma_read32(i32 %9, i32 %11)
  %13 = load i32, i32* @MCTL_EN_MAC, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i64 @WARN(i32 %16, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %39

20:                                               ; preds = %1
  %21 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %22 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %39, label %25

25:                                               ; preds = %20
  %26 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %27 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load void (%struct.brcms_phy.0*)*, void (%struct.brcms_phy.0*)** %28, align 8
  %30 = bitcast void (%struct.brcms_phy.0*)* %29 to void (%struct.brcms_phy*)*
  store void (%struct.brcms_phy*)* %30, void (%struct.brcms_phy*)** %4, align 8
  %31 = load void (%struct.brcms_phy*)*, void (%struct.brcms_phy*)** %4, align 8
  %32 = icmp ne void (%struct.brcms_phy*)* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load void (%struct.brcms_phy*)*, void (%struct.brcms_phy*)** %4, align 8
  %35 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  call void %34(%struct.brcms_phy* %35)
  br label %36

36:                                               ; preds = %33, %25
  %37 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %38 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  br label %39

39:                                               ; preds = %19, %36, %20
  ret void
}

declare dso_local i64 @WARN(i32, i8*) #1

declare dso_local i32 @bcma_read32(i32, i32) #1

declare dso_local i32 @D11REGOFFS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
