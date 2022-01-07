; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_copper_link_mgp_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_copper_link_mgp_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32, i32, i64, i64, i64 }

@.str = private unnamed_addr constant [28 x i8] c"e1000_copper_link_mgp_setup\00", align 1
@E1000_SUCCESS = common dso_local global i64 0, align 8
@M88E1000_PHY_SPEC_CTRL = common dso_local global i32 0, align 4
@M88E1000_PSCR_ASSERT_CRS_ON_TX = common dso_local global i32 0, align 4
@M88E1000_PSCR_AUTO_X_MODE = common dso_local global i32 0, align 4
@M88E1000_PSCR_MDI_MANUAL_MODE = common dso_local global i32 0, align 4
@M88E1000_PSCR_MDIX_MANUAL_MODE = common dso_local global i32 0, align 4
@M88E1000_PSCR_AUTO_X_1000T = common dso_local global i32 0, align 4
@M88E1000_PSCR_POLARITY_REVERSAL = common dso_local global i32 0, align 4
@M88E1011_I_REV_4 = common dso_local global i64 0, align 8
@M88E1000_EXT_PHY_SPEC_CTRL = common dso_local global i32 0, align 4
@M88E1000_EPSCR_TX_CLK_25 = common dso_local global i32 0, align 4
@E1000_REVISION_2 = common dso_local global i64 0, align 8
@M88E1111_I_PHY_ID = common dso_local global i64 0, align 8
@M88EC018_EPSCR_DOWNSHIFT_COUNTER_MASK = common dso_local global i32 0, align 4
@M88EC018_EPSCR_DOWNSHIFT_COUNTER_5X = common dso_local global i32 0, align 4
@M88E1000_EPSCR_MASTER_DOWNSHIFT_MASK = common dso_local global i32 0, align 4
@M88E1000_EPSCR_SLAVE_DOWNSHIFT_MASK = common dso_local global i32 0, align 4
@M88E1000_EPSCR_MASTER_DOWNSHIFT_1X = common dso_local global i32 0, align 4
@M88E1000_EPSCR_SLAVE_DOWNSHIFT_1X = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Error Resetting the PHY\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_copper_link_mgp_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_copper_link_mgp_setup(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %6 = call i32 @e_dbg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 4
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %12, i64* %2, align 8
  br label %149

13:                                               ; preds = %1
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %15 = load i32, i32* @M88E1000_PHY_SPEC_CTRL, align 4
  %16 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %14, i32 %15, i32* %5)
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* %4, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i64, i64* %4, align 8
  store i64 %20, i64* %2, align 8
  br label %149

21:                                               ; preds = %13
  %22 = load i32, i32* @M88E1000_PSCR_ASSERT_CRS_ON_TX, align 4
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* @M88E1000_PSCR_AUTO_X_MODE, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %5, align 4
  %29 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %30 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %45 [
    i32 1, label %32
    i32 2, label %36
    i32 3, label %40
    i32 0, label %44
  ]

32:                                               ; preds = %21
  %33 = load i32, i32* @M88E1000_PSCR_MDI_MANUAL_MODE, align 4
  %34 = load i32, i32* %5, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %5, align 4
  br label %49

36:                                               ; preds = %21
  %37 = load i32, i32* @M88E1000_PSCR_MDIX_MANUAL_MODE, align 4
  %38 = load i32, i32* %5, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %5, align 4
  br label %49

40:                                               ; preds = %21
  %41 = load i32, i32* @M88E1000_PSCR_AUTO_X_1000T, align 4
  %42 = load i32, i32* %5, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %5, align 4
  br label %49

44:                                               ; preds = %21
  br label %45

45:                                               ; preds = %21, %44
  %46 = load i32, i32* @M88E1000_PSCR_AUTO_X_MODE, align 4
  %47 = load i32, i32* %5, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %45, %40, %36, %32
  %50 = load i32, i32* @M88E1000_PSCR_POLARITY_REVERSAL, align 4
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %5, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %5, align 4
  %54 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %55 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %62

58:                                               ; preds = %49
  %59 = load i32, i32* @M88E1000_PSCR_POLARITY_REVERSAL, align 4
  %60 = load i32, i32* %5, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %58, %49
  %63 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %64 = load i32, i32* @M88E1000_PHY_SPEC_CTRL, align 4
  %65 = load i32, i32* %5, align 4
  %66 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %63, i32 %64, i32 %65)
  store i64 %66, i64* %4, align 8
  %67 = load i64, i64* %4, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load i64, i64* %4, align 8
  store i64 %70, i64* %2, align 8
  br label %149

71:                                               ; preds = %62
  %72 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %73 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @M88E1011_I_REV_4, align 8
  %76 = icmp slt i64 %74, %75
  br i1 %76, label %77, label %139

77:                                               ; preds = %71
  %78 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %79 = load i32, i32* @M88E1000_EXT_PHY_SPEC_CTRL, align 4
  %80 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %78, i32 %79, i32* %5)
  store i64 %80, i64* %4, align 8
  %81 = load i64, i64* %4, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = load i64, i64* %4, align 8
  store i64 %84, i64* %2, align 8
  br label %149

85:                                               ; preds = %77
  %86 = load i32, i32* @M88E1000_EPSCR_TX_CLK_25, align 4
  %87 = load i32, i32* %5, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %5, align 4
  %89 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %90 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @E1000_REVISION_2, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %117

94:                                               ; preds = %85
  %95 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %96 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @M88E1111_I_PHY_ID, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %117

100:                                              ; preds = %94
  %101 = load i32, i32* @M88EC018_EPSCR_DOWNSHIFT_COUNTER_MASK, align 4
  %102 = xor i32 %101, -1
  %103 = load i32, i32* %5, align 4
  %104 = and i32 %103, %102
  store i32 %104, i32* %5, align 4
  %105 = load i32, i32* @M88EC018_EPSCR_DOWNSHIFT_COUNTER_5X, align 4
  %106 = load i32, i32* %5, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %5, align 4
  %108 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %109 = load i32, i32* @M88E1000_EXT_PHY_SPEC_CTRL, align 4
  %110 = load i32, i32* %5, align 4
  %111 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %108, i32 %109, i32 %110)
  store i64 %111, i64* %4, align 8
  %112 = load i64, i64* %4, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %100
  %115 = load i64, i64* %4, align 8
  store i64 %115, i64* %2, align 8
  br label %149

116:                                              ; preds = %100
  br label %138

117:                                              ; preds = %94, %85
  %118 = load i32, i32* @M88E1000_EPSCR_MASTER_DOWNSHIFT_MASK, align 4
  %119 = load i32, i32* @M88E1000_EPSCR_SLAVE_DOWNSHIFT_MASK, align 4
  %120 = or i32 %118, %119
  %121 = xor i32 %120, -1
  %122 = load i32, i32* %5, align 4
  %123 = and i32 %122, %121
  store i32 %123, i32* %5, align 4
  %124 = load i32, i32* @M88E1000_EPSCR_MASTER_DOWNSHIFT_1X, align 4
  %125 = load i32, i32* @M88E1000_EPSCR_SLAVE_DOWNSHIFT_1X, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* %5, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %5, align 4
  %129 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %130 = load i32, i32* @M88E1000_EXT_PHY_SPEC_CTRL, align 4
  %131 = load i32, i32* %5, align 4
  %132 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %129, i32 %130, i32 %131)
  store i64 %132, i64* %4, align 8
  %133 = load i64, i64* %4, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %117
  %136 = load i64, i64* %4, align 8
  store i64 %136, i64* %2, align 8
  br label %149

137:                                              ; preds = %117
  br label %138

138:                                              ; preds = %137, %116
  br label %139

139:                                              ; preds = %138, %71
  %140 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %141 = call i64 @e1000_phy_reset(%struct.e1000_hw* %140)
  store i64 %141, i64* %4, align 8
  %142 = load i64, i64* %4, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %139
  %145 = call i32 @e_dbg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %146 = load i64, i64* %4, align 8
  store i64 %146, i64* %2, align 8
  br label %149

147:                                              ; preds = %139
  %148 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %148, i64* %2, align 8
  br label %149

149:                                              ; preds = %147, %144, %135, %114, %83, %69, %19, %11
  %150 = load i64, i64* %2, align 8
  ret i64 %150
}

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i64 @e1000_read_phy_reg(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i64 @e1000_write_phy_reg(%struct.e1000_hw*, i32, i32) #1

declare dso_local i64 @e1000_phy_reset(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
