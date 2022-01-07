; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_detect_gig_phy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_detect_gig_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i64, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"e1000_detect_gig_phy\00", align 1
@E1000_SUCCESS = common dso_local global i64 0, align 8
@PHY_ID1 = common dso_local global i32 0, align 4
@PHY_ID2 = common dso_local global i32 0, align 4
@PHY_REVISION_MASK = common dso_local global i32 0, align 4
@M88E1000_E_PHY_ID = common dso_local global i32 0, align 4
@M88E1000_I_PHY_ID = common dso_local global i32 0, align 4
@M88E1011_I_PHY_ID = common dso_local global i32 0, align 4
@RTL8211B_PHY_ID = common dso_local global i32 0, align 4
@RTL8201N_PHY_ID = common dso_local global i32 0, align 4
@M88E1118_E_PHY_ID = common dso_local global i32 0, align 4
@IGP01E1000_I_PHY_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Invalid MAC type %d\0A\00", align 1
@E1000_ERR_CONFIG = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"PHY ID 0x%X detected\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Invalid PHY ID 0x%X\0A\00", align 1
@E1000_ERR_PHY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_detect_gig_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_detect_gig_phy(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  store i32 0, i32* %8, align 4
  %9 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %11 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %15, i64* %2, align 8
  br label %144

16:                                               ; preds = %1
  %17 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %18 = load i32, i32* @PHY_ID1, align 4
  %19 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %17, i32 %18, i32* %6)
  store i64 %19, i64* %5, align 8
  %20 = load i64, i64* %5, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i64, i64* %5, align 8
  store i64 %23, i64* %2, align 8
  br label %144

24:                                               ; preds = %16
  %25 = load i32, i32* %6, align 4
  %26 = shl i32 %25, 16
  %27 = sext i32 %26 to i64
  %28 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %29 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = call i32 @udelay(i32 20)
  %31 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %32 = load i32, i32* @PHY_ID2, align 4
  %33 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %31, i32 %32, i32* %7)
  store i64 %33, i64* %5, align 8
  %34 = load i64, i64* %5, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %24
  %37 = load i64, i64* %5, align 8
  store i64 %37, i64* %2, align 8
  br label %144

38:                                               ; preds = %24
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @PHY_REVISION_MASK, align 4
  %41 = and i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %44 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = or i64 %45, %42
  store i64 %46, i64* %44, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @PHY_REVISION_MASK, align 4
  %49 = xor i32 %48, -1
  %50 = and i32 %47, %49
  %51 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %52 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %54 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  switch i32 %55, label %115 [
    i32 136, label %56
    i32 135, label %65
    i32 139, label %74
    i32 134, label %74
    i32 133, label %74
    i32 132, label %74
    i32 131, label %74
    i32 128, label %83
    i32 138, label %106
    i32 137, label %106
    i32 130, label %106
    i32 129, label %106
  ]

56:                                               ; preds = %38
  %57 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %58 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* @M88E1000_E_PHY_ID, align 4
  %61 = sext i32 %60 to i64
  %62 = icmp eq i64 %59, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  store i32 1, i32* %8, align 4
  br label %64

64:                                               ; preds = %63, %56
  br label %122

65:                                               ; preds = %38
  %66 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %67 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* @M88E1000_I_PHY_ID, align 4
  %70 = sext i32 %69 to i64
  %71 = icmp eq i64 %68, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  store i32 1, i32* %8, align 4
  br label %73

73:                                               ; preds = %72, %65
  br label %122

74:                                               ; preds = %38, %38, %38, %38, %38
  %75 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %76 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* @M88E1011_I_PHY_ID, align 4
  %79 = sext i32 %78 to i64
  %80 = icmp eq i64 %77, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  store i32 1, i32* %8, align 4
  br label %82

82:                                               ; preds = %81, %74
  br label %122

83:                                               ; preds = %38
  %84 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %85 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i32, i32* @RTL8211B_PHY_ID, align 4
  %88 = sext i32 %87 to i64
  %89 = icmp eq i64 %86, %88
  br i1 %89, label %104, label %90

90:                                               ; preds = %83
  %91 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %92 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i32, i32* @RTL8201N_PHY_ID, align 4
  %95 = sext i32 %94 to i64
  %96 = icmp eq i64 %93, %95
  br i1 %96, label %104, label %97

97:                                               ; preds = %90
  %98 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %99 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i32, i32* @M88E1118_E_PHY_ID, align 4
  %102 = sext i32 %101 to i64
  %103 = icmp eq i64 %100, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %97, %90, %83
  store i32 1, i32* %8, align 4
  br label %105

105:                                              ; preds = %104, %97
  br label %122

106:                                              ; preds = %38, %38, %38, %38
  %107 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %108 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i32, i32* @IGP01E1000_I_PHY_ID, align 4
  %111 = sext i32 %110 to i64
  %112 = icmp eq i64 %109, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %106
  store i32 1, i32* %8, align 4
  br label %114

114:                                              ; preds = %113, %106
  br label %122

115:                                              ; preds = %38
  %116 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %117 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %118)
  %120 = load i64, i64* @E1000_ERR_CONFIG, align 8
  %121 = sub nsw i64 0, %120
  store i64 %121, i64* %2, align 8
  br label %144

122:                                              ; preds = %114, %105, %82, %73, %64
  %123 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %124 = call i64 @e1000_set_phy_type(%struct.e1000_hw* %123)
  store i64 %124, i64* %4, align 8
  %125 = load i32, i32* %8, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %137

127:                                              ; preds = %122
  %128 = load i64, i64* %4, align 8
  %129 = load i64, i64* @E1000_SUCCESS, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %137

131:                                              ; preds = %127
  %132 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %133 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 %134)
  %136 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %136, i64* %2, align 8
  br label %144

137:                                              ; preds = %127, %122
  %138 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %139 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i64 %140)
  %142 = load i64, i64* @E1000_ERR_PHY, align 8
  %143 = sub nsw i64 0, %142
  store i64 %143, i64* %2, align 8
  br label %144

144:                                              ; preds = %137, %131, %115, %36, %22, %14
  %145 = load i64, i64* %2, align 8
  ret i64 %145
}

declare dso_local i32 @e_dbg(i8*, ...) #1

declare dso_local i64 @e1000_read_phy_reg(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @e1000_set_phy_type(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
