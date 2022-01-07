; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_set_rssi_2055_vcm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_set_rssi_2055_vcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32 }

@N_RSSI_NB = common dso_local global i32 0, align 4
@B2055_C1_B0NB_RSSIVCM = common dso_local global i32 0, align 4
@B2055_C1_RX_BB_RSSICTL5 = common dso_local global i32 0, align 4
@B2055_C2_B0NB_RSSIVCM = common dso_local global i32 0, align 4
@B2055_C2_RX_BB_RSSICTL5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i32, i32*)* @b43_nphy_set_rssi_2055_vcm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_set_rssi_2055_vcm(%struct.b43_wldev* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.b43_wldev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %77, %3
  %9 = load i32, i32* %7, align 4
  %10 = icmp slt i32 %9, 2
  br i1 %10, label %11, label %80

11:                                               ; preds = %8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @N_RSSI_NB, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %52

15:                                               ; preds = %11
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %15
  %19 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %20 = load i32, i32* @B2055_C1_B0NB_RSSIVCM, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @b43_radio_maskset(%struct.b43_wldev* %19, i32 %20, i32 252, i32 %23)
  %25 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %26 = load i32, i32* @B2055_C1_RX_BB_RSSICTL5, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @b43_radio_maskset(%struct.b43_wldev* %25, i32 %26, i32 252, i32 %29)
  br label %51

31:                                               ; preds = %15
  %32 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %33 = load i32, i32* @B2055_C2_B0NB_RSSIVCM, align 4
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = mul nsw i32 2, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @b43_radio_maskset(%struct.b43_wldev* %32, i32 %33, i32 252, i32 %39)
  %41 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %42 = load i32, i32* @B2055_C2_RX_BB_RSSICTL5, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = mul nsw i32 2, %44
  %46 = add nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %43, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @b43_radio_maskset(%struct.b43_wldev* %41, i32 %42, i32 252, i32 %49)
  br label %51

51:                                               ; preds = %31, %18
  br label %76

52:                                               ; preds = %11
  %53 = load i32, i32* %7, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %52
  %56 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %57 = load i32, i32* @B2055_C1_RX_BB_RSSICTL5, align 4
  %58 = load i32*, i32** %6, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 %60, 2
  %62 = call i32 @b43_radio_maskset(%struct.b43_wldev* %56, i32 %57, i32 243, i32 %61)
  br label %75

63:                                               ; preds = %52
  %64 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %65 = load i32, i32* @B2055_C2_RX_BB_RSSICTL5, align 4
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = mul nsw i32 2, %67
  %69 = add nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %66, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = shl i32 %72, 2
  %74 = call i32 @b43_radio_maskset(%struct.b43_wldev* %64, i32 %65, i32 243, i32 %73)
  br label %75

75:                                               ; preds = %63, %55
  br label %76

76:                                               ; preds = %75, %51
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %8

80:                                               ; preds = %8
  ret void
}

declare dso_local i32 @b43_radio_maskset(%struct.b43_wldev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
