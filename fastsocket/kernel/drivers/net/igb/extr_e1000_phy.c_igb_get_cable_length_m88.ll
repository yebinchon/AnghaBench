; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_phy.c_igb_get_cable_length_m88.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_phy.c_igb_get_cable_length_m88.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_phy_info }
%struct.e1000_phy_info = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.e1000_hw.0*, i32, i32*)* }
%struct.e1000_hw.0 = type opaque

@M88E1000_PHY_SPEC_STATUS = common dso_local global i32 0, align 4
@M88E1000_PSSR_CABLE_LENGTH = common dso_local global i32 0, align 4
@M88E1000_PSSR_CABLE_LENGTH_SHIFT = common dso_local global i32 0, align 4
@M88E1000_CABLE_LENGTH_TABLE_SIZE = common dso_local global i32 0, align 4
@E1000_ERR_PHY = common dso_local global i32 0, align 4
@e1000_m88_cable_length_table = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @igb_get_cable_length_m88(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_phy_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 0
  store %struct.e1000_phy_info* %8, %struct.e1000_phy_info** %3, align 8
  %9 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %10 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32 (%struct.e1000_hw.0*, i32, i32*)*, i32 (%struct.e1000_hw.0*, i32, i32*)** %11, align 8
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %14 = bitcast %struct.e1000_hw* %13 to %struct.e1000_hw.0*
  %15 = load i32, i32* @M88E1000_PHY_SPEC_STATUS, align 4
  %16 = call i32 %12(%struct.e1000_hw.0* %14, i32 %15, i32* %5)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %61

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @M88E1000_PSSR_CABLE_LENGTH, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* @M88E1000_PSSR_CABLE_LENGTH_SHIFT, align 4
  %25 = ashr i32 %23, %24
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @M88E1000_CABLE_LENGTH_TABLE_SIZE, align 4
  %28 = sub nsw i32 %27, 1
  %29 = icmp sge i32 %26, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %20
  %31 = load i32, i32* @E1000_ERR_PHY, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %61

33:                                               ; preds = %20
  %34 = load i8**, i8*** @e1000_m88_cable_length_table, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %34, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = ptrtoint i8* %38 to i32
  %40 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %41 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load i8**, i8*** @e1000_m88_cable_length_table, align 8
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %42, i64 %45
  %47 = load i8*, i8** %46, align 8
  %48 = ptrtoint i8* %47 to i32
  %49 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %50 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %52 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %55 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %53, %56
  %58 = sdiv i32 %57, 2
  %59 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %60 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  br label %61

61:                                               ; preds = %33, %30, %19
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
