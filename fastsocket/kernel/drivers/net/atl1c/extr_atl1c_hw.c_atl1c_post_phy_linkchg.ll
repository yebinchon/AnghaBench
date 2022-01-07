; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atl1c/extr_atl1c_hw.c_atl1c_post_phy_linkchg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atl1c/extr_atl1c_hw.c_atl1c_post_phy_linkchg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1c_hw = type { i64, i64 }

@athr_l2c_b = common dso_local global i64 0, align 8
@athr_l2c_b2 = common dso_local global i64 0, align 8
@athr_l1d = common dso_local global i64 0, align 8
@athr_l1d_2 = common dso_local global i64 0, align 8
@SPEED_0 = common dso_local global i64 0, align 8
@MIIEXT_PCS = common dso_local global i32 0, align 4
@MIIEXT_CLDCTRL6 = common dso_local global i32 0, align 4
@CLDCTRL6_CAB_LEN = common dso_local global i32 0, align 4
@CLDCTRL6_CAB_LEN_SHORT = common dso_local global i64 0, align 8
@AZ_ANADECT_LONG = common dso_local global i64 0, align 8
@AZ_ANADECT_DEF = common dso_local global i64 0, align 8
@MIIDBG_AZ_ANADECT = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i64 0, align 8
@MIIDBG_MSE16DB = common dso_local global i32 0, align 4
@L1D_MSE16DB_UP = common dso_local global i64 0, align 8
@MIIDBG_SYSMODCTRL = common dso_local global i32 0, align 4
@L1D_SYSMODCTRL_IECHOADJ_DEF = common dso_local global i64 0, align 8
@SYSMODCTRL_IECHOADJ_DEF = common dso_local global i64 0, align 8
@L1D_MSE16DB_DOWN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @atl1c_post_phy_linkchg(%struct.atl1c_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.atl1c_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.atl1c_hw* %0, %struct.atl1c_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %8 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @athr_l2c_b, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %30, label %12

12:                                               ; preds = %2
  %13 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %14 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @athr_l2c_b2, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %30, label %18

18:                                               ; preds = %12
  %19 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %20 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @athr_l1d, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %26 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @athr_l1d_2, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24, %18, %12, %2
  store i32 1, i32* %6, align 4
  br label %31

31:                                               ; preds = %30, %24
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* @SPEED_0, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %84

35:                                               ; preds = %31
  %36 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %37 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @athr_l1d_2, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %62

41:                                               ; preds = %35
  %42 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %43 = load i32, i32* @MIIEXT_PCS, align 4
  %44 = load i32, i32* @MIIEXT_CLDCTRL6, align 4
  %45 = call i32 @atl1c_read_phy_ext(%struct.atl1c_hw* %42, i32 %43, i32 %44, i64* %5)
  %46 = load i64, i64* %5, align 8
  %47 = load i32, i32* @CLDCTRL6_CAB_LEN, align 4
  %48 = call i64 @FIELD_GETX(i64 %46, i32 %47)
  store i64 %48, i64* %5, align 8
  %49 = load i64, i64* %5, align 8
  %50 = load i64, i64* @CLDCTRL6_CAB_LEN_SHORT, align 8
  %51 = icmp sgt i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %41
  %53 = load i64, i64* @AZ_ANADECT_LONG, align 8
  br label %56

54:                                               ; preds = %41
  %55 = load i64, i64* @AZ_ANADECT_DEF, align 8
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i64 [ %53, %52 ], [ %55, %54 ]
  store i64 %57, i64* %5, align 8
  %58 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %59 = load i32, i32* @MIIDBG_AZ_ANADECT, align 4
  %60 = load i64, i64* %5, align 8
  %61 = call i32 @atl1c_write_phy_dbg(%struct.atl1c_hw* %58, i32 %59, i64 %60)
  br label %62

62:                                               ; preds = %56, %35
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %83

65:                                               ; preds = %62
  %66 = load i64, i64* %4, align 8
  %67 = load i64, i64* @SPEED_100, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %83

69:                                               ; preds = %65
  %70 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %71 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %69
  %75 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %76 = load i32, i32* @MIIDBG_MSE16DB, align 4
  %77 = load i64, i64* @L1D_MSE16DB_UP, align 8
  %78 = call i32 @atl1c_write_phy_dbg(%struct.atl1c_hw* %75, i32 %76, i64 %77)
  %79 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %80 = load i32, i32* @MIIDBG_SYSMODCTRL, align 4
  %81 = load i64, i64* @L1D_SYSMODCTRL_IECHOADJ_DEF, align 8
  %82 = call i32 @atl1c_write_phy_dbg(%struct.atl1c_hw* %79, i32 %80, i64 %81)
  br label %83

83:                                               ; preds = %74, %69, %65, %62
  br label %102

84:                                               ; preds = %31
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %101

87:                                               ; preds = %84
  %88 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %89 = getelementptr inbounds %struct.atl1c_hw, %struct.atl1c_hw* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %87
  %93 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %94 = load i32, i32* @MIIDBG_SYSMODCTRL, align 4
  %95 = load i64, i64* @SYSMODCTRL_IECHOADJ_DEF, align 8
  %96 = call i32 @atl1c_write_phy_dbg(%struct.atl1c_hw* %93, i32 %94, i64 %95)
  %97 = load %struct.atl1c_hw*, %struct.atl1c_hw** %3, align 8
  %98 = load i32, i32* @MIIDBG_MSE16DB, align 4
  %99 = load i64, i64* @L1D_MSE16DB_DOWN, align 8
  %100 = call i32 @atl1c_write_phy_dbg(%struct.atl1c_hw* %97, i32 %98, i64 %99)
  br label %101

101:                                              ; preds = %92, %87, %84
  br label %102

102:                                              ; preds = %101, %83
  ret void
}

declare dso_local i32 @atl1c_read_phy_ext(%struct.atl1c_hw*, i32, i32, i64*) #1

declare dso_local i64 @FIELD_GETX(i64, i32) #1

declare dso_local i32 @atl1c_write_phy_dbg(%struct.atl1c_hw*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
