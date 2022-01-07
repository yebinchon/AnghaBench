; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_check_downshift.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_check_downshift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i64, i32 }

@.str = private unnamed_addr constant [22 x i8] c"e1000_check_downshift\00", align 1
@e1000_phy_igp = common dso_local global i64 0, align 8
@IGP01E1000_PHY_LINK_HEALTH = common dso_local global i32 0, align 4
@IGP01E1000_PLHR_SS_DOWNGRADE = common dso_local global i32 0, align 4
@e1000_phy_m88 = common dso_local global i64 0, align 8
@M88E1000_PHY_SPEC_STATUS = common dso_local global i32 0, align 4
@M88E1000_PSSR_DOWNSHIFT = common dso_local global i32 0, align 4
@M88E1000_PSSR_DOWNSHIFT_SHIFT = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_check_downshift to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_check_downshift(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %6 = call i32 @e_dbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @e1000_phy_igp, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %29

12:                                               ; preds = %1
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %14 = load i32, i32* @IGP01E1000_PHY_LINK_HEALTH, align 4
  %15 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %13, i32 %14, i32* %5)
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %4, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i64, i64* %4, align 8
  store i64 %19, i64* %2, align 8
  br label %54

20:                                               ; preds = %12
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @IGP01E1000_PLHR_SS_DOWNGRADE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 1, i32 0
  %27 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %28 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  br label %52

29:                                               ; preds = %1
  %30 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %31 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @e1000_phy_m88, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %51

35:                                               ; preds = %29
  %36 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %37 = load i32, i32* @M88E1000_PHY_SPEC_STATUS, align 4
  %38 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %36, i32 %37, i32* %5)
  store i64 %38, i64* %4, align 8
  %39 = load i64, i64* %4, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i64, i64* %4, align 8
  store i64 %42, i64* %2, align 8
  br label %54

43:                                               ; preds = %35
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @M88E1000_PSSR_DOWNSHIFT, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* @M88E1000_PSSR_DOWNSHIFT_SHIFT, align 4
  %48 = ashr i32 %46, %47
  %49 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %50 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  br label %51

51:                                               ; preds = %43, %29
  br label %52

52:                                               ; preds = %51, %20
  %53 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %53, i64* %2, align 8
  br label %54

54:                                               ; preds = %52, %41, %18
  %55 = load i64, i64* %2, align 8
  ret i64 %55
}

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i64 @e1000_read_phy_reg(%struct.e1000_hw*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
