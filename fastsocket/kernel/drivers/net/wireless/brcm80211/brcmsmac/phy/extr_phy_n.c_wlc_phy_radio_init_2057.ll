; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_radio_init_2057.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_radio_init_2057.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radio_20xx_regs = type { i32 }
%struct.brcms_phy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@regs_2057_rev4 = common dso_local global %struct.radio_20xx_regs* null, align 8
@regs_2057_rev5 = common dso_local global %struct.radio_20xx_regs* null, align 8
@regs_2057_rev5v1 = common dso_local global %struct.radio_20xx_regs* null, align 8
@regs_2057_rev7 = common dso_local global %struct.radio_20xx_regs* null, align 8
@regs_2057_rev8 = common dso_local global %struct.radio_20xx_regs* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*)* @wlc_phy_radio_init_2057 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_phy_radio_init_2057(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  %3 = alloca %struct.radio_20xx_regs*, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  store %struct.radio_20xx_regs* null, %struct.radio_20xx_regs** %3, align 8
  %4 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %5 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @NREV_IS(i32 %7, i32 7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load %struct.radio_20xx_regs*, %struct.radio_20xx_regs** @regs_2057_rev4, align 8
  store %struct.radio_20xx_regs* %11, %struct.radio_20xx_regs** %3, align 8
  br label %58

12:                                               ; preds = %1
  %13 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %14 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @NREV_IS(i32 %16, i32 8)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %12
  %20 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %21 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @NREV_IS(i32 %23, i32 9)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %57

26:                                               ; preds = %19, %12
  %27 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %28 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %55 [
    i32 5, label %31
    i32 7, label %51
    i32 8, label %53
  ]

31:                                               ; preds = %26
  %32 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %33 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @NREV_IS(i32 %35, i32 8)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load %struct.radio_20xx_regs*, %struct.radio_20xx_regs** @regs_2057_rev5, align 8
  store %struct.radio_20xx_regs* %39, %struct.radio_20xx_regs** %3, align 8
  br label %50

40:                                               ; preds = %31
  %41 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %42 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @NREV_IS(i32 %44, i32 9)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load %struct.radio_20xx_regs*, %struct.radio_20xx_regs** @regs_2057_rev5v1, align 8
  store %struct.radio_20xx_regs* %48, %struct.radio_20xx_regs** %3, align 8
  br label %49

49:                                               ; preds = %47, %40
  br label %50

50:                                               ; preds = %49, %38
  br label %56

51:                                               ; preds = %26
  %52 = load %struct.radio_20xx_regs*, %struct.radio_20xx_regs** @regs_2057_rev7, align 8
  store %struct.radio_20xx_regs* %52, %struct.radio_20xx_regs** %3, align 8
  br label %56

53:                                               ; preds = %26
  %54 = load %struct.radio_20xx_regs*, %struct.radio_20xx_regs** @regs_2057_rev8, align 8
  store %struct.radio_20xx_regs* %54, %struct.radio_20xx_regs** %3, align 8
  br label %56

55:                                               ; preds = %26
  br label %56

56:                                               ; preds = %55, %53, %51, %50
  br label %57

57:                                               ; preds = %56, %19
  br label %58

58:                                               ; preds = %57, %10
  %59 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %60 = load %struct.radio_20xx_regs*, %struct.radio_20xx_regs** %3, align 8
  %61 = call i32 @wlc_phy_init_radio_regs_allbands(%struct.brcms_phy* %59, %struct.radio_20xx_regs* %60)
  ret void
}

declare dso_local i64 @NREV_IS(i32, i32) #1

declare dso_local i32 @wlc_phy_init_radio_regs_allbands(%struct.brcms_phy*, %struct.radio_20xx_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
