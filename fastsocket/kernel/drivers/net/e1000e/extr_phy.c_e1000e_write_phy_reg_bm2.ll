; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_phy.c_e1000e_write_phy_reg_bm2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_phy.c_e1000e_write_phy_reg_bm2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.1*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@IGP_PAGE_SHIFT = common dso_local global i32 0, align 4
@BM_WUC_PAGE = common dso_local global i64 0, align 8
@MAX_PHY_MULTI_PAGE_REG = common dso_local global i32 0, align 4
@BM_PHY_PAGE_SELECT = common dso_local global i32 0, align 4
@MAX_PHY_REG_ADDRESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000e_write_phy_reg_bm2(%struct.e1000_hw* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @IGP_PAGE_SHIFT, align 4
  %12 = ashr i32 %10, %11
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %9, align 8
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %15 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i64 (%struct.e1000_hw.1*)*, i64 (%struct.e1000_hw.1*)** %17, align 8
  %19 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %20 = bitcast %struct.e1000_hw* %19 to %struct.e1000_hw.1*
  %21 = call i64 %18(%struct.e1000_hw.1* %20)
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %8, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i64, i64* %8, align 8
  store i64 %25, i64* %4, align 8
  br label %67

26:                                               ; preds = %3
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* @BM_WUC_PAGE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i64 @e1000_access_phy_wakeup_reg_bm(%struct.e1000_hw* %31, i32 %32, i64* %7, i32 0, i32 0)
  store i64 %33, i64* %8, align 8
  br label %57

34:                                               ; preds = %26
  %35 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %36 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @MAX_PHY_MULTI_PAGE_REG, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %34
  %42 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %43 = load i32, i32* @BM_PHY_PAGE_SELECT, align 4
  %44 = load i64, i64* %9, align 8
  %45 = call i64 @e1000e_write_phy_reg_mdic(%struct.e1000_hw* %42, i32 %43, i64 %44)
  store i64 %45, i64* %8, align 8
  %46 = load i64, i64* %8, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %57

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49, %34
  %51 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %52 = load i32, i32* @MAX_PHY_REG_ADDRESS, align 4
  %53 = load i32, i32* %6, align 4
  %54 = and i32 %52, %53
  %55 = load i64, i64* %7, align 8
  %56 = call i64 @e1000e_write_phy_reg_mdic(%struct.e1000_hw* %51, i32 %54, i64 %55)
  store i64 %56, i64* %8, align 8
  br label %57

57:                                               ; preds = %50, %48, %30
  %58 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %59 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %61, align 8
  %63 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %64 = bitcast %struct.e1000_hw* %63 to %struct.e1000_hw.0*
  %65 = call i32 %62(%struct.e1000_hw.0* %64)
  %66 = load i64, i64* %8, align 8
  store i64 %66, i64* %4, align 8
  br label %67

67:                                               ; preds = %57, %24
  %68 = load i64, i64* %4, align 8
  ret i64 %68
}

declare dso_local i64 @e1000_access_phy_wakeup_reg_bm(%struct.e1000_hw*, i32, i64*, i32, i32) #1

declare dso_local i64 @e1000e_write_phy_reg_mdic(%struct.e1000_hw*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
