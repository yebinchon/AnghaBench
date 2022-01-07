; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_phy.c_e1000_phy_force_speed_duplex_82577.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_phy.c_e1000_phy_force_speed_duplex_82577.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_phy_info }
%struct.e1000_phy_info = type { i64 }

@MII_BMCR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Waiting for forced speed/duplex link on 82577 phy\0A\00", align 1
@PHY_FORCE_LIMIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Link taking longer than expected.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_phy_force_speed_duplex_82577(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_phy_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 0
  store %struct.e1000_phy_info* %9, %struct.e1000_phy_info** %4, align 8
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %11 = load i32, i32* @MII_BMCR, align 4
  %12 = call i64 @e1e_rphy(%struct.e1000_hw* %10, i32 %11, i32* %6)
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i64, i64* %5, align 8
  store i64 %16, i64* %2, align 8
  br label %54

17:                                               ; preds = %1
  %18 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %19 = call i32 @e1000e_phy_force_speed_duplex_setup(%struct.e1000_hw* %18, i32* %6)
  %20 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %21 = load i32, i32* @MII_BMCR, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i64 @e1e_wphy(%struct.e1000_hw* %20, i32 %21, i32 %22)
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = load i64, i64* %5, align 8
  store i64 %27, i64* %2, align 8
  br label %54

28:                                               ; preds = %17
  %29 = call i32 @udelay(i32 1)
  %30 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %31 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %28
  %35 = call i32 @e_dbg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %37 = load i32, i32* @PHY_FORCE_LIMIT, align 4
  %38 = call i64 @e1000e_phy_has_link_generic(%struct.e1000_hw* %36, i32 %37, i32 100000, i32* %7)
  store i64 %38, i64* %5, align 8
  %39 = load i64, i64* %5, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i64, i64* %5, align 8
  store i64 %42, i64* %2, align 8
  br label %54

43:                                               ; preds = %34
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %43
  %47 = call i32 @e_dbg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %43
  %49 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %50 = load i32, i32* @PHY_FORCE_LIMIT, align 4
  %51 = call i64 @e1000e_phy_has_link_generic(%struct.e1000_hw* %49, i32 %50, i32 100000, i32* %7)
  store i64 %51, i64* %5, align 8
  br label %52

52:                                               ; preds = %48, %28
  %53 = load i64, i64* %5, align 8
  store i64 %53, i64* %2, align 8
  br label %54

54:                                               ; preds = %52, %41, %26, %15
  %55 = load i64, i64* %2, align 8
  ret i64 %55
}

declare dso_local i64 @e1e_rphy(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i32 @e1000e_phy_force_speed_duplex_setup(%struct.e1000_hw*, i32*) #1

declare dso_local i64 @e1e_wphy(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i64 @e1000e_phy_has_link_generic(%struct.e1000_hw*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
