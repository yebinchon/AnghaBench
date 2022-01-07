; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_init_radio_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_init_radio_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32 }
%struct.radio_regs = type { i32, i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @wlc_phy_init_radio_regs(%struct.brcms_phy* %0, %struct.radio_regs* %1, i32 %2) #0 {
  %4 = alloca %struct.brcms_phy*, align 8
  %5 = alloca %struct.radio_regs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %4, align 8
  store %struct.radio_regs* %1, %struct.radio_regs** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %9

9:                                                ; preds = %90, %3
  %10 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %11 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @CHSPEC_IS5G(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %51

15:                                               ; preds = %9
  %16 = load %struct.radio_regs*, %struct.radio_regs** %5, align 8
  %17 = load i64, i64* %7, align 8
  %18 = getelementptr inbounds %struct.radio_regs, %struct.radio_regs* %16, i64 %17
  %19 = getelementptr inbounds %struct.radio_regs, %struct.radio_regs* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %50

22:                                               ; preds = %15
  %23 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %24 = load %struct.radio_regs*, %struct.radio_regs** %5, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds %struct.radio_regs, %struct.radio_regs* %24, i64 %25
  %27 = getelementptr inbounds %struct.radio_regs, %struct.radio_regs* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.radio_regs*, %struct.radio_regs** %5, align 8
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds %struct.radio_regs, %struct.radio_regs* %31, i64 %32
  %34 = getelementptr inbounds %struct.radio_regs, %struct.radio_regs* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 @write_radio_reg(%struct.brcms_phy* %23, i32 %30, i32 %36)
  %38 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %39 = call i64 @ISNPHY(%struct.brcms_phy* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %22
  %42 = load i64, i64* %8, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %8, align 8
  %44 = urem i64 %43, 4
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %48 = call i32 @BRCMS_PHY_WAR_PR51571(%struct.brcms_phy* %47)
  br label %49

49:                                               ; preds = %46, %41, %22
  br label %50

50:                                               ; preds = %49, %15
  br label %87

51:                                               ; preds = %9
  %52 = load %struct.radio_regs*, %struct.radio_regs** %5, align 8
  %53 = load i64, i64* %7, align 8
  %54 = getelementptr inbounds %struct.radio_regs, %struct.radio_regs* %52, i64 %53
  %55 = getelementptr inbounds %struct.radio_regs, %struct.radio_regs* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %86

58:                                               ; preds = %51
  %59 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %60 = load %struct.radio_regs*, %struct.radio_regs** %5, align 8
  %61 = load i64, i64* %7, align 8
  %62 = getelementptr inbounds %struct.radio_regs, %struct.radio_regs* %60, i64 %61
  %63 = getelementptr inbounds %struct.radio_regs, %struct.radio_regs* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = or i32 %64, %65
  %67 = load %struct.radio_regs*, %struct.radio_regs** %5, align 8
  %68 = load i64, i64* %7, align 8
  %69 = getelementptr inbounds %struct.radio_regs, %struct.radio_regs* %67, i64 %68
  %70 = getelementptr inbounds %struct.radio_regs, %struct.radio_regs* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = trunc i64 %71 to i32
  %73 = call i32 @write_radio_reg(%struct.brcms_phy* %59, i32 %66, i32 %72)
  %74 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %75 = call i64 @ISNPHY(%struct.brcms_phy* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %58
  %78 = load i64, i64* %8, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %8, align 8
  %80 = urem i64 %79, 4
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %84 = call i32 @BRCMS_PHY_WAR_PR51571(%struct.brcms_phy* %83)
  br label %85

85:                                               ; preds = %82, %77, %58
  br label %86

86:                                               ; preds = %85, %51
  br label %87

87:                                               ; preds = %86, %50
  %88 = load i64, i64* %7, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %7, align 8
  br label %90

90:                                               ; preds = %87
  %91 = load %struct.radio_regs*, %struct.radio_regs** %5, align 8
  %92 = load i64, i64* %7, align 8
  %93 = getelementptr inbounds %struct.radio_regs, %struct.radio_regs* %91, i64 %92
  %94 = getelementptr inbounds %struct.radio_regs, %struct.radio_regs* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 65535
  br i1 %96, label %9, label %97

97:                                               ; preds = %90
  %98 = load i64, i64* %7, align 8
  ret i64 %98
}

declare dso_local i64 @CHSPEC_IS5G(i32) #1

declare dso_local i32 @write_radio_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i64 @ISNPHY(%struct.brcms_phy*) #1

declare dso_local i32 @BRCMS_PHY_WAR_PR51571(%struct.brcms_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
