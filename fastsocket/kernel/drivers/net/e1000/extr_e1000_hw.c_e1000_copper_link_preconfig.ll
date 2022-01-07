; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_copper_link_preconfig.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_copper_link_preconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i64, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"e1000_copper_link_preconfig\00", align 1
@CTRL = common dso_local global i32 0, align 4
@e1000_82543 = common dso_local global i64 0, align 8
@E1000_CTRL_SLU = common dso_local global i32 0, align 4
@E1000_CTRL_FRCSPD = common dso_local global i32 0, align 4
@E1000_CTRL_FRCDPX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Error, did not detect valid phy.\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Phy ID = %x\0A\00", align 1
@e1000_82545_rev_3 = common dso_local global i64 0, align 8
@e1000_82546_rev_3 = common dso_local global i64 0, align 8
@M88E1000_PHY_SPEC_CTRL = common dso_local global i32 0, align 4
@e1000_82541 = common dso_local global i64 0, align 8
@e1000_82547 = common dso_local global i64 0, align 8
@e1000_82541_rev_2 = common dso_local global i64 0, align 8
@e1000_82547_rev_2 = common dso_local global i64 0, align 8
@E1000_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_copper_link_preconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_copper_link_preconfig(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %7 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @CTRL, align 4
  %9 = call i32 @er32(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %11 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @e1000_82543, align 8
  %14 = icmp sgt i64 %12, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %1
  %16 = load i32, i32* @E1000_CTRL_SLU, align 4
  %17 = load i32, i32* %4, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* @E1000_CTRL_FRCSPD, align 4
  %20 = load i32, i32* @E1000_CTRL_FRCDPX, align 4
  %21 = or i32 %19, %20
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* @CTRL, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @ew32(i32 %25, i32 %26)
  br label %46

28:                                               ; preds = %1
  %29 = load i32, i32* @E1000_CTRL_FRCSPD, align 4
  %30 = load i32, i32* @E1000_CTRL_FRCDPX, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @E1000_CTRL_SLU, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* %4, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* @CTRL, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @ew32(i32 %36, i32 %37)
  %39 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %40 = call i64 @e1000_phy_hw_reset(%struct.e1000_hw* %39)
  store i64 %40, i64* %5, align 8
  %41 = load i64, i64* %5, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %28
  %44 = load i64, i64* %5, align 8
  store i64 %44, i64* %2, align 8
  br label %122

45:                                               ; preds = %28
  br label %46

46:                                               ; preds = %45, %15
  %47 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %48 = call i64 @e1000_detect_gig_phy(%struct.e1000_hw* %47)
  store i64 %48, i64* %5, align 8
  %49 = load i64, i64* %5, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i64, i64* %5, align 8
  store i64 %53, i64* %2, align 8
  br label %122

54:                                               ; preds = %46
  %55 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %56 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %60 = call i64 @e1000_set_phy_mode(%struct.e1000_hw* %59)
  store i64 %60, i64* %5, align 8
  %61 = load i64, i64* %5, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %54
  %64 = load i64, i64* %5, align 8
  store i64 %64, i64* %2, align 8
  br label %122

65:                                               ; preds = %54
  %66 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %67 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @e1000_82545_rev_3, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %77, label %71

71:                                               ; preds = %65
  %72 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %73 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @e1000_82546_rev_3, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %71, %65
  %78 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %79 = load i32, i32* @M88E1000_PHY_SPEC_CTRL, align 4
  %80 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %78, i32 %79, i32* %6)
  store i64 %80, i64* %5, align 8
  %81 = load i32, i32* %6, align 4
  %82 = or i32 %81, 8
  store i32 %82, i32* %6, align 4
  %83 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %84 = load i32, i32* @M88E1000_PHY_SPEC_CTRL, align 4
  %85 = load i32, i32* %6, align 4
  %86 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %83, i32 %84, i32 %85)
  store i64 %86, i64* %5, align 8
  br label %87

87:                                               ; preds = %77, %71
  %88 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %89 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @e1000_82543, align 8
  %92 = icmp sle i64 %90, %91
  br i1 %92, label %117, label %93

93:                                               ; preds = %87
  %94 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %95 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @e1000_82541, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %117, label %99

99:                                               ; preds = %93
  %100 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %101 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @e1000_82547, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %117, label %105

105:                                              ; preds = %99
  %106 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %107 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @e1000_82541_rev_2, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %117, label %111

111:                                              ; preds = %105
  %112 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %113 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @e1000_82547_rev_2, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %111, %105, %99, %93, %87
  %118 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %119 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %118, i32 0, i32 1
  store i32 0, i32* %119, align 8
  br label %120

120:                                              ; preds = %117, %111
  %121 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %121, i64* %2, align 8
  br label %122

122:                                              ; preds = %120, %63, %51, %43
  %123 = load i64, i64* %2, align 8
  ret i64 %123
}

declare dso_local i32 @e_dbg(i8*, ...) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i64 @e1000_phy_hw_reset(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_detect_gig_phy(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_set_phy_mode(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_read_phy_reg(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i64 @e1000_write_phy_reg(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
