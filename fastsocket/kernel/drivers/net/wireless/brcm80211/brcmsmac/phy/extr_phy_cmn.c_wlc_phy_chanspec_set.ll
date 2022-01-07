; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_chanspec_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_chanspec_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy_pub = type { i32 }
%struct.brcms_phy = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { void (%struct.brcms_phy.0*, i32)* }
%struct.brcms_phy.0 = type opaque
%struct.TYPE_3__ = type { i32 }

@D11_CURCHANNEL_5G = common dso_local global i32 0, align 4
@D11_CURCHANNEL_40 = common dso_local global i32 0, align 4
@M_CURCHANNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlc_phy_chanspec_set(%struct.brcms_phy_pub* %0, i32 %1) #0 {
  %3 = alloca %struct.brcms_phy_pub*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.brcms_phy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca void (%struct.brcms_phy*, i32)*, align 8
  store %struct.brcms_phy_pub* %0, %struct.brcms_phy_pub** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.brcms_phy_pub*, %struct.brcms_phy_pub** %3, align 8
  %9 = bitcast %struct.brcms_phy_pub* %8 to %struct.brcms_phy*
  store %struct.brcms_phy* %9, %struct.brcms_phy** %5, align 8
  store void (%struct.brcms_phy*, i32)* null, void (%struct.brcms_phy*, i32)** %7, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @CHSPEC_CHANNEL(i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @CHSPEC_IS5G(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* @D11_CURCHANNEL_5G, align 4
  %17 = load i32, i32* %6, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %6, align 4
  br label %19

19:                                               ; preds = %15, %2
  %20 = load i32, i32* %4, align 4
  %21 = call i64 @CHSPEC_IS40(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32, i32* @D11_CURCHANNEL_40, align 4
  %25 = load i32, i32* %6, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %23, %19
  %28 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %29 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @M_CURCHANNEL, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @wlapi_bmac_write_shm(i32 %32, i32 %33, i32 %34)
  %36 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %37 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load void (%struct.brcms_phy.0*, i32)*, void (%struct.brcms_phy.0*, i32)** %38, align 8
  %40 = bitcast void (%struct.brcms_phy.0*, i32)* %39 to void (%struct.brcms_phy*, i32)*
  store void (%struct.brcms_phy*, i32)* %40, void (%struct.brcms_phy*, i32)** %7, align 8
  %41 = load void (%struct.brcms_phy*, i32)*, void (%struct.brcms_phy*, i32)** %7, align 8
  %42 = icmp ne void (%struct.brcms_phy*, i32)* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %27
  %44 = load void (%struct.brcms_phy*, i32)*, void (%struct.brcms_phy*, i32)** %7, align 8
  %45 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %46 = load i32, i32* %4, align 4
  call void %44(%struct.brcms_phy* %45, i32 %46)
  br label %47

47:                                               ; preds = %43, %27
  ret void
}

declare dso_local i32 @CHSPEC_CHANNEL(i32) #1

declare dso_local i64 @CHSPEC_IS5G(i32) #1

declare dso_local i64 @CHSPEC_IS40(i32) #1

declare dso_local i32 @wlapi_bmac_write_shm(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
