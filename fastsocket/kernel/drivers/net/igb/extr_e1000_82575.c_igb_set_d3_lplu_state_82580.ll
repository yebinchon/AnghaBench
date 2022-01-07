; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_82575.c_igb_set_d3_lplu_state_82580.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_82575.c_igb_set_d3_lplu_state_82580.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_phy_info }
%struct.e1000_phy_info = type { i64, i64 }

@E1000_82580_PHY_POWER_MGMT = common dso_local global i32 0, align 4
@E1000_82580_PM_D3_LPLU = common dso_local global i32 0, align 4
@e1000_smart_speed_on = common dso_local global i64 0, align 8
@E1000_82580_PM_SPD = common dso_local global i32 0, align 4
@e1000_smart_speed_off = common dso_local global i64 0, align 8
@E1000_ALL_SPEED_DUPLEX = common dso_local global i64 0, align 8
@E1000_ALL_NOT_GIG = common dso_local global i64 0, align 8
@E1000_ALL_10_SPEED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*, i32)* @igb_set_d3_lplu_state_82580 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_set_d3_lplu_state_82580(%struct.e1000_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.e1000_phy_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 0
  store %struct.e1000_phy_info* %9, %struct.e1000_phy_info** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* @E1000_82580_PHY_POWER_MGMT, align 4
  %11 = call i32 @rd32(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %41, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @E1000_82580_PM_D3_LPLU, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %7, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %7, align 4
  %19 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %20 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @e1000_smart_speed_on, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %14
  %25 = load i32, i32* @E1000_82580_PM_SPD, align 4
  %26 = load i32, i32* %7, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %7, align 4
  br label %40

28:                                               ; preds = %14
  %29 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %30 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @e1000_smart_speed_off, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load i32, i32* @E1000_82580_PM_SPD, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %7, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %34, %28
  br label %40

40:                                               ; preds = %39, %24
  br label %68

41:                                               ; preds = %2
  %42 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %43 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @E1000_ALL_SPEED_DUPLEX, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %59, label %47

47:                                               ; preds = %41
  %48 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %49 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @E1000_ALL_NOT_GIG, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %59, label %53

53:                                               ; preds = %47
  %54 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %55 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @E1000_ALL_10_SPEED, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %53, %47, %41
  %60 = load i32, i32* @E1000_82580_PM_D3_LPLU, align 4
  %61 = load i32, i32* %7, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* @E1000_82580_PM_SPD, align 4
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %7, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %59, %53
  br label %68

68:                                               ; preds = %67, %40
  %69 = load i32, i32* @E1000_82580_PHY_POWER_MGMT, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @wr32(i32 %69, i32 %70)
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @wr32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
