; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_get_speed_and_duplex.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_get_speed_and_duplex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i64, i64, i64 }

@.str = private unnamed_addr constant [27 x i8] c"e1000_get_speed_and_duplex\00", align 1
@e1000_82543 = common dso_local global i64 0, align 8
@STATUS = common dso_local global i32 0, align 4
@E1000_STATUS_SPEED_1000 = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"1000 Mbs, \00", align 1
@E1000_STATUS_SPEED_100 = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"100 Mbs, \00", align 1
@SPEED_10 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"10 Mbs, \00", align 1
@E1000_STATUS_FD = common dso_local global i32 0, align 4
@FULL_DUPLEX = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [13 x i8] c"Full Duplex\0A\00", align 1
@HALF_DUPLEX = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [14 x i8] c" Half Duplex\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"1000 Mbs, Full Duplex\0A\00", align 1
@e1000_phy_igp = common dso_local global i64 0, align 8
@PHY_AUTONEG_EXP = common dso_local global i32 0, align 4
@NWAY_ER_LP_NWAY_CAPS = common dso_local global i64 0, align 8
@PHY_LP_ABILITY = common dso_local global i32 0, align 4
@NWAY_LPAR_100TX_FD_CAPS = common dso_local global i64 0, align 8
@NWAY_LPAR_10T_FD_CAPS = common dso_local global i64 0, align 8
@E1000_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_get_speed_and_duplex(%struct.e1000_hw* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  %11 = call i32 @e_dbg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %13 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @e1000_82543, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %17, label %56

17:                                               ; preds = %3
  %18 = load i32, i32* @STATUS, align 4
  %19 = call i32 @er32(i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @E1000_STATUS_SPEED_1000, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load i64, i64* @SPEED_1000, align 8
  %26 = load i64*, i64** %6, align 8
  store i64 %25, i64* %26, align 8
  %27 = call i32 @e_dbg(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %42

28:                                               ; preds = %17
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @E1000_STATUS_SPEED_100, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i64, i64* @SPEED_100, align 8
  %35 = load i64*, i64** %6, align 8
  store i64 %34, i64* %35, align 8
  %36 = call i32 @e_dbg(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %41

37:                                               ; preds = %28
  %38 = load i64, i64* @SPEED_10, align 8
  %39 = load i64*, i64** %6, align 8
  store i64 %38, i64* %39, align 8
  %40 = call i32 @e_dbg(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %41

41:                                               ; preds = %37, %33
  br label %42

42:                                               ; preds = %41, %24
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @E1000_STATUS_FD, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i64, i64* @FULL_DUPLEX, align 8
  %49 = load i64*, i64** %7, align 8
  store i64 %48, i64* %49, align 8
  %50 = call i32 @e_dbg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %55

51:                                               ; preds = %42
  %52 = load i64, i64* @HALF_DUPLEX, align 8
  %53 = load i64*, i64** %7, align 8
  store i64 %52, i64* %53, align 8
  %54 = call i32 @e_dbg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %55

55:                                               ; preds = %51, %47
  br label %62

56:                                               ; preds = %3
  %57 = call i32 @e_dbg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %58 = load i64, i64* @SPEED_1000, align 8
  %59 = load i64*, i64** %6, align 8
  store i64 %58, i64* %59, align 8
  %60 = load i64, i64* @FULL_DUPLEX, align 8
  %61 = load i64*, i64** %7, align 8
  store i64 %60, i64* %61, align 8
  br label %62

62:                                               ; preds = %56, %55
  %63 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %64 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @e1000_phy_igp, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %122

68:                                               ; preds = %62
  %69 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %70 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %122

73:                                               ; preds = %68
  %74 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %75 = load i32, i32* @PHY_AUTONEG_EXP, align 4
  %76 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %74, i32 %75, i64* %10)
  store i64 %76, i64* %9, align 8
  %77 = load i64, i64* %9, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = load i64, i64* %9, align 8
  store i64 %80, i64* %4, align 8
  br label %124

81:                                               ; preds = %73
  %82 = load i64, i64* %10, align 8
  %83 = load i64, i64* @NWAY_ER_LP_NWAY_CAPS, align 8
  %84 = and i64 %82, %83
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %81
  %87 = load i64, i64* @HALF_DUPLEX, align 8
  %88 = load i64*, i64** %7, align 8
  store i64 %87, i64* %88, align 8
  br label %121

89:                                               ; preds = %81
  %90 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %91 = load i32, i32* @PHY_LP_ABILITY, align 4
  %92 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %90, i32 %91, i64* %10)
  store i64 %92, i64* %9, align 8
  %93 = load i64, i64* %9, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %89
  %96 = load i64, i64* %9, align 8
  store i64 %96, i64* %4, align 8
  br label %124

97:                                               ; preds = %89
  %98 = load i64*, i64** %6, align 8
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @SPEED_100, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %97
  %103 = load i64, i64* %10, align 8
  %104 = load i64, i64* @NWAY_LPAR_100TX_FD_CAPS, align 8
  %105 = and i64 %103, %104
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %102, %97
  %108 = load i64*, i64** %6, align 8
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @SPEED_10, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %120

112:                                              ; preds = %107
  %113 = load i64, i64* %10, align 8
  %114 = load i64, i64* @NWAY_LPAR_10T_FD_CAPS, align 8
  %115 = and i64 %113, %114
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %112, %102
  %118 = load i64, i64* @HALF_DUPLEX, align 8
  %119 = load i64*, i64** %7, align 8
  store i64 %118, i64* %119, align 8
  br label %120

120:                                              ; preds = %117, %112, %107
  br label %121

121:                                              ; preds = %120, %86
  br label %122

122:                                              ; preds = %121, %68, %62
  %123 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %123, i64* %4, align 8
  br label %124

124:                                              ; preds = %122, %95, %79
  %125 = load i64, i64* %4, align 8
  ret i64 %125
}

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i64 @e1000_read_phy_reg(%struct.e1000_hw*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
