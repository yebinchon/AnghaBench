; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_phy.c_e1000e_write_phy_reg_bm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_phy.c_e1000e_write_phy_reg_bm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.1*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@IGP_PAGE_SHIFT = common dso_local global i64 0, align 8
@BM_WUC_PAGE = common dso_local global i64 0, align 8
@MAX_PHY_MULTI_PAGE_REG = common dso_local global i64 0, align 8
@IGP01E1000_PHY_PAGE_SELECT = common dso_local global i64 0, align 8
@BM_PHY_PAGE_SELECT = common dso_local global i64 0, align 8
@MAX_PHY_REG_ADDRESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000e_write_phy_reg_bm(%struct.e1000_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @IGP_PAGE_SHIFT, align 8
  %14 = ashr i64 %12, %13
  store i64 %14, i64* %9, align 8
  %15 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %16 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i64 (%struct.e1000_hw.1*)*, i64 (%struct.e1000_hw.1*)** %18, align 8
  %20 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %21 = bitcast %struct.e1000_hw* %20 to %struct.e1000_hw.1*
  %22 = call i64 %19(%struct.e1000_hw.1* %21)
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %8, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i64, i64* %8, align 8
  store i64 %26, i64* %4, align 8
  br label %84

27:                                               ; preds = %3
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* @BM_WUC_PAGE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i64 @e1000_access_phy_wakeup_reg_bm(%struct.e1000_hw* %32, i64 %33, i64* %7, i32 0, i32 0)
  store i64 %34, i64* %8, align 8
  br label %74

35:                                               ; preds = %27
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @e1000_get_phy_addr_for_bm_page(i64 %36, i64 %37)
  %39 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %40 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* @MAX_PHY_MULTI_PAGE_REG, align 8
  %44 = icmp sgt i64 %42, %43
  br i1 %44, label %45, label %67

45:                                               ; preds = %35
  %46 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %47 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i64, i64* @IGP_PAGE_SHIFT, align 8
  store i64 %52, i64* %10, align 8
  %53 = load i64, i64* @IGP01E1000_PHY_PAGE_SELECT, align 8
  store i64 %53, i64* %11, align 8
  br label %56

54:                                               ; preds = %45
  store i64 0, i64* %10, align 8
  %55 = load i64, i64* @BM_PHY_PAGE_SELECT, align 8
  store i64 %55, i64* %11, align 8
  br label %56

56:                                               ; preds = %54, %51
  %57 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %58 = load i64, i64* %11, align 8
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* %10, align 8
  %61 = shl i64 %59, %60
  %62 = call i64 @e1000e_write_phy_reg_mdic(%struct.e1000_hw* %57, i64 %58, i64 %61)
  store i64 %62, i64* %8, align 8
  %63 = load i64, i64* %8, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %56
  br label %74

66:                                               ; preds = %56
  br label %67

67:                                               ; preds = %66, %35
  %68 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %69 = load i64, i64* @MAX_PHY_REG_ADDRESS, align 8
  %70 = load i64, i64* %6, align 8
  %71 = and i64 %69, %70
  %72 = load i64, i64* %7, align 8
  %73 = call i64 @e1000e_write_phy_reg_mdic(%struct.e1000_hw* %68, i64 %71, i64 %72)
  store i64 %73, i64* %8, align 8
  br label %74

74:                                               ; preds = %67, %65, %31
  %75 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %76 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %78, align 8
  %80 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %81 = bitcast %struct.e1000_hw* %80 to %struct.e1000_hw.0*
  %82 = call i32 %79(%struct.e1000_hw.0* %81)
  %83 = load i64, i64* %8, align 8
  store i64 %83, i64* %4, align 8
  br label %84

84:                                               ; preds = %74, %25
  %85 = load i64, i64* %4, align 8
  ret i64 %85
}

declare dso_local i64 @e1000_access_phy_wakeup_reg_bm(%struct.e1000_hw*, i64, i64*, i32, i32) #1

declare dso_local i32 @e1000_get_phy_addr_for_bm_page(i64, i64) #1

declare dso_local i64 @e1000e_write_phy_reg_mdic(%struct.e1000_hw*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
