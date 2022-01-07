; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_set_vco_speed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_set_vco_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"e1000_set_vco_speed\00", align 1
@E1000_SUCCESS = common dso_local global i64 0, align 8
@M88E1000_PHY_PAGE_SELECT = common dso_local global i32 0, align 4
@M88E1000_PHY_GEN_CONTROL = common dso_local global i32 0, align 4
@M88E1000_PHY_VCO_REG_BIT8 = common dso_local global i32 0, align 4
@M88E1000_PHY_VCO_REG_BIT11 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_set_vco_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_set_vco_speed(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = call i32 @e_dbg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %12 [
    i32 129, label %11
    i32 128, label %11
  ]

11:                                               ; preds = %1, %1
  br label %14

12:                                               ; preds = %1
  %13 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %13, i64* %2, align 8
  br label %90

14:                                               ; preds = %11
  %15 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %16 = load i32, i32* @M88E1000_PHY_PAGE_SELECT, align 4
  %17 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %15, i32 %16, i32* %5)
  store i64 %17, i64* %4, align 8
  %18 = load i64, i64* %4, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i64, i64* %4, align 8
  store i64 %21, i64* %2, align 8
  br label %90

22:                                               ; preds = %14
  %23 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %24 = load i32, i32* @M88E1000_PHY_PAGE_SELECT, align 4
  %25 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %23, i32 %24, i32 5)
  store i64 %25, i64* %4, align 8
  %26 = load i64, i64* %4, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i64, i64* %4, align 8
  store i64 %29, i64* %2, align 8
  br label %90

30:                                               ; preds = %22
  %31 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %32 = load i32, i32* @M88E1000_PHY_GEN_CONTROL, align 4
  %33 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %31, i32 %32, i32* %6)
  store i64 %33, i64* %4, align 8
  %34 = load i64, i64* %4, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i64, i64* %4, align 8
  store i64 %37, i64* %2, align 8
  br label %90

38:                                               ; preds = %30
  %39 = load i32, i32* @M88E1000_PHY_VCO_REG_BIT8, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %6, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %6, align 4
  %43 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %44 = load i32, i32* @M88E1000_PHY_GEN_CONTROL, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %43, i32 %44, i32 %45)
  store i64 %46, i64* %4, align 8
  %47 = load i64, i64* %4, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %38
  %50 = load i64, i64* %4, align 8
  store i64 %50, i64* %2, align 8
  br label %90

51:                                               ; preds = %38
  %52 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %53 = load i32, i32* @M88E1000_PHY_PAGE_SELECT, align 4
  %54 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %52, i32 %53, i32 4)
  store i64 %54, i64* %4, align 8
  %55 = load i64, i64* %4, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i64, i64* %4, align 8
  store i64 %58, i64* %2, align 8
  br label %90

59:                                               ; preds = %51
  %60 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %61 = load i32, i32* @M88E1000_PHY_GEN_CONTROL, align 4
  %62 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %60, i32 %61, i32* %6)
  store i64 %62, i64* %4, align 8
  %63 = load i64, i64* %4, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i64, i64* %4, align 8
  store i64 %66, i64* %2, align 8
  br label %90

67:                                               ; preds = %59
  %68 = load i32, i32* @M88E1000_PHY_VCO_REG_BIT11, align 4
  %69 = load i32, i32* %6, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %6, align 4
  %71 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %72 = load i32, i32* @M88E1000_PHY_GEN_CONTROL, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %71, i32 %72, i32 %73)
  store i64 %74, i64* %4, align 8
  %75 = load i64, i64* %4, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %67
  %78 = load i64, i64* %4, align 8
  store i64 %78, i64* %2, align 8
  br label %90

79:                                               ; preds = %67
  %80 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %81 = load i32, i32* @M88E1000_PHY_PAGE_SELECT, align 4
  %82 = load i32, i32* %5, align 4
  %83 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %80, i32 %81, i32 %82)
  store i64 %83, i64* %4, align 8
  %84 = load i64, i64* %4, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %79
  %87 = load i64, i64* %4, align 8
  store i64 %87, i64* %2, align 8
  br label %90

88:                                               ; preds = %79
  %89 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %89, i64* %2, align 8
  br label %90

90:                                               ; preds = %88, %86, %77, %65, %57, %49, %36, %28, %20, %12
  %91 = load i64, i64* %2, align 8
  ret i64 %91
}

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i64 @e1000_read_phy_reg(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i64 @e1000_write_phy_reg(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
