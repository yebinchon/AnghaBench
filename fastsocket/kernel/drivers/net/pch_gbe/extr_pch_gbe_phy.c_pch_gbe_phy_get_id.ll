; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pch_gbe/extr_pch_gbe_phy.c_pch_gbe_phy_get_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pch_gbe/extr_pch_gbe_phy.c_pch_gbe_phy_get_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_gbe_hw = type { %struct.pch_gbe_phy_info }
%struct.pch_gbe_phy_info = type { i32, i8* }

@PHY_ID1 = common dso_local global i32 0, align 4
@PHY_ID2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"phy->id : 0x%08x  phy->revision : 0x%08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @pch_gbe_phy_get_id(%struct.pch_gbe_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.pch_gbe_hw*, align 8
  %4 = alloca %struct.pch_gbe_phy_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pch_gbe_hw* %0, %struct.pch_gbe_hw** %3, align 8
  %8 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %9 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %8, i32 0, i32 0
  store %struct.pch_gbe_phy_info* %9, %struct.pch_gbe_phy_info** %4, align 8
  %10 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %11 = load i32, i32* @PHY_ID1, align 4
  %12 = call i64 @pch_gbe_phy_read_reg_miic(%struct.pch_gbe_hw* %10, i32 %11, i32* %6)
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i64, i64* %5, align 8
  store i64 %16, i64* %2, align 8
  br label %55

17:                                               ; preds = %1
  %18 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %19 = load i32, i32* @PHY_ID2, align 4
  %20 = call i64 @pch_gbe_phy_read_reg_miic(%struct.pch_gbe_hw* %18, i32 %19, i32* %7)
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i64, i64* %5, align 8
  store i64 %24, i64* %2, align 8
  br label %55

25:                                               ; preds = %17
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i8*
  %29 = ptrtoint i8* %28 to i32
  %30 = load %struct.pch_gbe_phy_info*, %struct.pch_gbe_phy_info** %4, align 8
  %31 = getelementptr inbounds %struct.pch_gbe_phy_info, %struct.pch_gbe_phy_info* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.pch_gbe_phy_info*, %struct.pch_gbe_phy_info** %4, align 8
  %33 = getelementptr inbounds %struct.pch_gbe_phy_info, %struct.pch_gbe_phy_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = shl i32 %34, 6
  %36 = load i32, i32* %7, align 4
  %37 = and i32 %36, 64512
  %38 = ashr i32 %37, 10
  %39 = or i32 %35, %38
  %40 = load %struct.pch_gbe_phy_info*, %struct.pch_gbe_phy_info** %4, align 8
  %41 = getelementptr inbounds %struct.pch_gbe_phy_info, %struct.pch_gbe_phy_info* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* %7, align 4
  %43 = and i32 %42, 15
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to i8*
  %46 = load %struct.pch_gbe_phy_info*, %struct.pch_gbe_phy_info** %4, align 8
  %47 = getelementptr inbounds %struct.pch_gbe_phy_info, %struct.pch_gbe_phy_info* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  %48 = load %struct.pch_gbe_phy_info*, %struct.pch_gbe_phy_info** %4, align 8
  %49 = getelementptr inbounds %struct.pch_gbe_phy_info, %struct.pch_gbe_phy_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.pch_gbe_phy_info*, %struct.pch_gbe_phy_info** %4, align 8
  %52 = getelementptr inbounds %struct.pch_gbe_phy_info, %struct.pch_gbe_phy_info* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %50, i8* %53)
  store i64 0, i64* %2, align 8
  br label %55

55:                                               ; preds = %25, %23, %15
  %56 = load i64, i64* %2, align 8
  ret i64 %56
}

declare dso_local i64 @pch_gbe_phy_read_reg_miic(%struct.pch_gbe_hw*, i32, i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
