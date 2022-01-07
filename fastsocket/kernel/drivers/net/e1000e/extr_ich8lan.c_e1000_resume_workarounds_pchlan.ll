; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ich8lan.c_e1000_resume_workarounds_pchlan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ich8lan.c_e1000_resume_workarounds_pchlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.1*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.TYPE_4__ = type { i64 }

@e1000_pch2lan = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Failed to init PHY flow ret_val=%d\0A\00", align 1
@e1000_phy_i217 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"Failed to setup iRST\0A\00", align 1
@FWSM = common dso_local global i32 0, align 4
@E1000_ICH_FWSM_FW_VALID = common dso_local global i32 0, align 4
@I217_MEMPWR = common dso_local global i32 0, align 4
@I217_MEMPWR_DISABLE_SMB_RELEASE = common dso_local global i32 0, align 4
@I217_PROXY_CTRL = common dso_local global i32 0, align 4
@I217_CGFREG = common dso_local global i32 0, align 4
@I217_CGFREG_ENABLE_MTA_RESET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Error %d in resume workarounds\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @e1000_resume_workarounds_pchlan(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %5 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %6 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @e1000_pch2lan, align 8
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %95

12:                                               ; preds = %1
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %14 = call i64 @e1000_init_phy_workarounds_pchlan(%struct.e1000_hw* %13)
  store i64 %14, i64* %3, align 8
  %15 = load i64, i64* %3, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i64, i64* %3, align 8
  %19 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %18)
  br label %95

20:                                               ; preds = %12
  %21 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %22 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @e1000_phy_i217, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %95

27:                                               ; preds = %20
  %28 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %29 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i64 (%struct.e1000_hw.1*)*, i64 (%struct.e1000_hw.1*)** %31, align 8
  %33 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %34 = bitcast %struct.e1000_hw* %33 to %struct.e1000_hw.1*
  %35 = call i64 %32(%struct.e1000_hw.1* %34)
  store i64 %35, i64* %3, align 8
  %36 = load i64, i64* %3, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %27
  %39 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %95

40:                                               ; preds = %27
  %41 = load i32, i32* @FWSM, align 4
  %42 = call i32 @er32(i32 %41)
  %43 = load i32, i32* @E1000_ICH_FWSM_FW_VALID, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %64, label %46

46:                                               ; preds = %40
  %47 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %48 = load i32, i32* @I217_MEMPWR, align 4
  %49 = call i64 @e1e_rphy_locked(%struct.e1000_hw* %47, i32 %48, i32* %4)
  store i64 %49, i64* %3, align 8
  %50 = load i64, i64* %3, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %80

53:                                               ; preds = %46
  %54 = load i32, i32* @I217_MEMPWR_DISABLE_SMB_RELEASE, align 4
  %55 = load i32, i32* %4, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %4, align 4
  %57 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %58 = load i32, i32* @I217_MEMPWR, align 4
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @e1e_wphy_locked(%struct.e1000_hw* %57, i32 %58, i32 %59)
  %61 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %62 = load i32, i32* @I217_PROXY_CTRL, align 4
  %63 = call i32 @e1e_wphy_locked(%struct.e1000_hw* %61, i32 %62, i32 0)
  br label %64

64:                                               ; preds = %53, %40
  %65 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %66 = load i32, i32* @I217_CGFREG, align 4
  %67 = call i64 @e1e_rphy_locked(%struct.e1000_hw* %65, i32 %66, i32* %4)
  store i64 %67, i64* %3, align 8
  %68 = load i64, i64* %3, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %80

71:                                               ; preds = %64
  %72 = load i32, i32* @I217_CGFREG_ENABLE_MTA_RESET, align 4
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %4, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %4, align 4
  %76 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %77 = load i32, i32* @I217_CGFREG, align 4
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @e1e_wphy_locked(%struct.e1000_hw* %76, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %71, %70, %52
  %81 = load i64, i64* %3, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i64, i64* %3, align 8
  %85 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %84)
  br label %86

86:                                               ; preds = %83, %80
  %87 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %88 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %90, align 8
  %92 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %93 = bitcast %struct.e1000_hw* %92 to %struct.e1000_hw.0*
  %94 = call i32 %91(%struct.e1000_hw.0* %93)
  br label %95

95:                                               ; preds = %11, %17, %38, %86, %20
  ret void
}

declare dso_local i64 @e1000_init_phy_workarounds_pchlan(%struct.e1000_hw*) #1

declare dso_local i32 @e_dbg(i8*, ...) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i64 @e1e_rphy_locked(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i32 @e1e_wphy_locked(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
