; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_setup_copper_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_setup_copper_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i64, i64 }

@.str = private unnamed_addr constant [24 x i8] c"e1000_setup_copper_link\00", align 1
@e1000_phy_igp = common dso_local global i64 0, align 8
@e1000_phy_m88 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"gbe_dhg_phy_setup failed!\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Forcing speed and duplex\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Error Forcing Speed and Duplex\0A\00", align 1
@PHY_STATUS = common dso_local global i32 0, align 4
@MII_SR_LINK_STATUS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"Valid link established!!!\0A\00", align 1
@E1000_SUCCESS = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [29 x i8] c"Unable to establish link!!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_setup_copper_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_setup_copper_link(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %7 = call i32 @e_dbg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %9 = call i64 @e1000_copper_link_preconfig(%struct.e1000_hw* %8)
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i64, i64* %4, align 8
  store i64 %13, i64* %2, align 8
  br label %118

14:                                               ; preds = %1
  %15 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %16 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @e1000_phy_igp, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %14
  %21 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %22 = call i64 @e1000_copper_link_igp_setup(%struct.e1000_hw* %21)
  store i64 %22, i64* %4, align 8
  %23 = load i64, i64* %4, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i64, i64* %4, align 8
  store i64 %26, i64* %2, align 8
  br label %118

27:                                               ; preds = %20
  br label %52

28:                                               ; preds = %14
  %29 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %30 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @e1000_phy_m88, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %28
  %35 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %36 = call i64 @e1000_copper_link_mgp_setup(%struct.e1000_hw* %35)
  store i64 %36, i64* %4, align 8
  %37 = load i64, i64* %4, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i64, i64* %4, align 8
  store i64 %40, i64* %2, align 8
  br label %118

41:                                               ; preds = %34
  br label %51

42:                                               ; preds = %28
  %43 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %44 = call i64 @gbe_dhg_phy_setup(%struct.e1000_hw* %43)
  store i64 %44, i64* %4, align 8
  %45 = load i64, i64* %4, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = call i32 @e_dbg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i64, i64* %4, align 8
  store i64 %49, i64* %2, align 8
  br label %118

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %50, %41
  br label %52

52:                                               ; preds = %51, %27
  %53 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %54 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %59 = call i64 @e1000_copper_link_autoneg(%struct.e1000_hw* %58)
  store i64 %59, i64* %4, align 8
  %60 = load i64, i64* %4, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i64, i64* %4, align 8
  store i64 %63, i64* %2, align 8
  br label %118

64:                                               ; preds = %57
  br label %75

65:                                               ; preds = %52
  %66 = call i32 @e_dbg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %67 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %68 = call i64 @e1000_phy_force_speed_duplex(%struct.e1000_hw* %67)
  store i64 %68, i64* %4, align 8
  %69 = load i64, i64* %4, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = call i32 @e_dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %73 = load i64, i64* %4, align 8
  store i64 %73, i64* %2, align 8
  br label %118

74:                                               ; preds = %65
  br label %75

75:                                               ; preds = %74, %64
  store i32 0, i32* %5, align 4
  br label %76

76:                                               ; preds = %112, %75
  %77 = load i32, i32* %5, align 4
  %78 = icmp slt i32 %77, 10
  br i1 %78, label %79, label %115

79:                                               ; preds = %76
  %80 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %81 = load i32, i32* @PHY_STATUS, align 4
  %82 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %80, i32 %81, i32* %6)
  store i64 %82, i64* %4, align 8
  %83 = load i64, i64* %4, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %79
  %86 = load i64, i64* %4, align 8
  store i64 %86, i64* %2, align 8
  br label %118

87:                                               ; preds = %79
  %88 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %89 = load i32, i32* @PHY_STATUS, align 4
  %90 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %88, i32 %89, i32* %6)
  store i64 %90, i64* %4, align 8
  %91 = load i64, i64* %4, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %87
  %94 = load i64, i64* %4, align 8
  store i64 %94, i64* %2, align 8
  br label %118

95:                                               ; preds = %87
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* @MII_SR_LINK_STATUS, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %110

100:                                              ; preds = %95
  %101 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %102 = call i64 @e1000_copper_link_postconfig(%struct.e1000_hw* %101)
  store i64 %102, i64* %4, align 8
  %103 = load i64, i64* %4, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = load i64, i64* %4, align 8
  store i64 %106, i64* %2, align 8
  br label %118

107:                                              ; preds = %100
  %108 = call i32 @e_dbg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %109 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %109, i64* %2, align 8
  br label %118

110:                                              ; preds = %95
  %111 = call i32 @udelay(i32 10)
  br label %112

112:                                              ; preds = %110
  %113 = load i32, i32* %5, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %5, align 4
  br label %76

115:                                              ; preds = %76
  %116 = call i32 @e_dbg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %117 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %117, i64* %2, align 8
  br label %118

118:                                              ; preds = %115, %107, %105, %93, %85, %71, %62, %47, %39, %25, %12
  %119 = load i64, i64* %2, align 8
  ret i64 %119
}

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i64 @e1000_copper_link_preconfig(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_copper_link_igp_setup(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_copper_link_mgp_setup(%struct.e1000_hw*) #1

declare dso_local i64 @gbe_dhg_phy_setup(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_copper_link_autoneg(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_phy_force_speed_duplex(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_read_phy_reg(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i64 @e1000_copper_link_postconfig(%struct.e1000_hw*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
