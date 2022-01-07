; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_radio_2057_rcal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_radio_2057_rcal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32, %struct.b43_phy }
%struct.b43_phy = type { i32 }

@R2057_IQTEST_SEL_PU = common dso_local global i32 0, align 4
@R2057_RCAL_CONFIG = common dso_local global i32 0, align 4
@R2057_RCCAL_N1_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Radio 0x2057 rcal timeout\0A\00", align 1
@R2057_RCAL_STATUS = common dso_local global i32 0, align 4
@R2057_IPA2G_CASCONV_CORE0 = common dso_local global i32 0, align 4
@R2057_TEMPSENSE_CONFIG = common dso_local global i32 0, align 4
@R2057_BANDGAP_RCAL_TRIM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_wldev*)* @b43_radio_2057_rcal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43_radio_2057_rcal(%struct.b43_wldev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca %struct.b43_phy*, align 8
  %5 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  %6 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %7 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %6, i32 0, i32 1
  store %struct.b43_phy* %7, %struct.b43_phy** %4, align 8
  %8 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %9 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 5
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %14 = call i32 @b43_phy_mask(%struct.b43_wldev* %13, i32 834, i32 -3)
  %15 = call i32 @udelay(i32 10)
  %16 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %17 = load i32, i32* @R2057_IQTEST_SEL_PU, align 4
  %18 = call i32 @b43_radio_set(%struct.b43_wldev* %16, i32 %17, i32 1)
  %19 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %20 = call i32 @b43_radio_maskset(%struct.b43_wldev* %19, i32 458, i32 -3, i32 1)
  br label %21

21:                                               ; preds = %12, %1
  %22 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %23 = load i32, i32* @R2057_RCAL_CONFIG, align 4
  %24 = call i32 @b43_radio_set(%struct.b43_wldev* %22, i32 %23, i32 1)
  %25 = call i32 @udelay(i32 10)
  %26 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %27 = load i32, i32* @R2057_RCAL_CONFIG, align 4
  %28 = call i32 @b43_radio_set(%struct.b43_wldev* %26, i32 %27, i32 3)
  %29 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %30 = load i32, i32* @R2057_RCCAL_N1_1, align 4
  %31 = call i32 @b43_radio_wait_value(%struct.b43_wldev* %29, i32 %30, i32 1, i32 1, i32 100, i32 1000000)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %21
  %34 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %35 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @b43err(i32 %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %82

38:                                               ; preds = %21
  %39 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %40 = load i32, i32* @R2057_RCAL_CONFIG, align 4
  %41 = call i32 @b43_radio_mask(%struct.b43_wldev* %39, i32 %40, i32 -3)
  %42 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %43 = load i32, i32* @R2057_RCAL_STATUS, align 4
  %44 = call i32 @b43_radio_read(%struct.b43_wldev* %42, i32 %43)
  %45 = and i32 %44, 62
  store i32 %45, i32* %5, align 4
  %46 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %47 = load i32, i32* @R2057_RCAL_CONFIG, align 4
  %48 = call i32 @b43_radio_mask(%struct.b43_wldev* %46, i32 %47, i32 -2)
  %49 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %50 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 5
  br i1 %52, label %53, label %59

53:                                               ; preds = %38
  %54 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %55 = load i32, i32* @R2057_IPA2G_CASCONV_CORE0, align 4
  %56 = call i32 @b43_radio_mask(%struct.b43_wldev* %54, i32 %55, i32 -2)
  %57 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %58 = call i32 @b43_radio_mask(%struct.b43_wldev* %57, i32 458, i32 -3)
  br label %59

59:                                               ; preds = %53, %38
  %60 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %61 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp sle i32 %62, 4
  br i1 %63, label %69, label %64

64:                                               ; preds = %59
  %65 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %66 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 6
  br i1 %68, label %69, label %79

69:                                               ; preds = %64, %59
  %70 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %71 = load i32, i32* @R2057_TEMPSENSE_CONFIG, align 4
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @b43_radio_maskset(%struct.b43_wldev* %70, i32 %71, i32 -61, i32 %72)
  %74 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %75 = load i32, i32* @R2057_BANDGAP_RCAL_TRIM, align 4
  %76 = load i32, i32* %5, align 4
  %77 = shl i32 %76, 2
  %78 = call i32 @b43_radio_maskset(%struct.b43_wldev* %74, i32 %75, i32 -241, i32 %77)
  br label %79

79:                                               ; preds = %69, %64
  %80 = load i32, i32* %5, align 4
  %81 = and i32 %80, 62
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %79, %33
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @b43_radio_set(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_radio_maskset(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43_radio_wait_value(%struct.b43_wldev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @b43err(i32, i8*) #1

declare dso_local i32 @b43_radio_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_radio_read(%struct.b43_wldev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
