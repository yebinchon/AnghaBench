; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_check_polarity.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_hw.c_e1000_check_polarity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i64 }

@.str = private unnamed_addr constant [21 x i8] c"e1000_check_polarity\00", align 1
@e1000_phy_m88 = common dso_local global i64 0, align 8
@M88E1000_PHY_SPEC_STATUS = common dso_local global i32 0, align 4
@M88E1000_PSSR_REV_POLARITY = common dso_local global i32 0, align 4
@M88E1000_PSSR_REV_POLARITY_SHIFT = common dso_local global i32 0, align 4
@e1000_rev_polarity_reversed = common dso_local global i32 0, align 4
@e1000_rev_polarity_normal = common dso_local global i32 0, align 4
@e1000_phy_igp = common dso_local global i64 0, align 8
@IGP01E1000_PHY_PORT_STATUS = common dso_local global i32 0, align 4
@IGP01E1000_PSSR_SPEED_MASK = common dso_local global i32 0, align 4
@IGP01E1000_PSSR_SPEED_1000MBPS = common dso_local global i32 0, align 4
@IGP01E1000_PHY_PCS_INIT_REG = common dso_local global i32 0, align 4
@IGP01E1000_PHY_POLARITY_MASK = common dso_local global i32 0, align 4
@IGP01E1000_PSSR_POLARITY_REVERSED = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, i32*)* @e1000_check_polarity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_check_polarity(%struct.e1000_hw* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = call i32 @e_dbg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %10 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @e1000_phy_m88, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %36

14:                                               ; preds = %2
  %15 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %16 = load i32, i32* @M88E1000_PHY_SPEC_STATUS, align 4
  %17 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %15, i32 %16, i32* %7)
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* %6, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i64, i64* %6, align 8
  store i64 %21, i64* %3, align 8
  br label %92

22:                                               ; preds = %14
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @M88E1000_PSSR_REV_POLARITY, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @M88E1000_PSSR_REV_POLARITY_SHIFT, align 4
  %27 = ashr i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* @e1000_rev_polarity_reversed, align 4
  br label %33

31:                                               ; preds = %22
  %32 = load i32, i32* @e1000_rev_polarity_normal, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  %35 = load i32*, i32** %5, align 8
  store i32 %34, i32* %35, align 4
  br label %90

36:                                               ; preds = %2
  %37 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %38 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @e1000_phy_igp, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %89

42:                                               ; preds = %36
  %43 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %44 = load i32, i32* @IGP01E1000_PHY_PORT_STATUS, align 4
  %45 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %43, i32 %44, i32* %7)
  store i64 %45, i64* %6, align 8
  %46 = load i64, i64* %6, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i64, i64* %6, align 8
  store i64 %49, i64* %3, align 8
  br label %92

50:                                               ; preds = %42
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @IGP01E1000_PSSR_SPEED_MASK, align 4
  %53 = and i32 %51, %52
  %54 = load i32, i32* @IGP01E1000_PSSR_SPEED_1000MBPS, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %76

56:                                               ; preds = %50
  %57 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %58 = load i32, i32* @IGP01E1000_PHY_PCS_INIT_REG, align 4
  %59 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %57, i32 %58, i32* %7)
  store i64 %59, i64* %6, align 8
  %60 = load i64, i64* %6, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i64, i64* %6, align 8
  store i64 %63, i64* %3, align 8
  br label %92

64:                                               ; preds = %56
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @IGP01E1000_PHY_POLARITY_MASK, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i32, i32* @e1000_rev_polarity_reversed, align 4
  br label %73

71:                                               ; preds = %64
  %72 = load i32, i32* @e1000_rev_polarity_normal, align 4
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi i32 [ %70, %69 ], [ %72, %71 ]
  %75 = load i32*, i32** %5, align 8
  store i32 %74, i32* %75, align 4
  br label %88

76:                                               ; preds = %50
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @IGP01E1000_PSSR_POLARITY_REVERSED, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load i32, i32* @e1000_rev_polarity_reversed, align 4
  br label %85

83:                                               ; preds = %76
  %84 = load i32, i32* @e1000_rev_polarity_normal, align 4
  br label %85

85:                                               ; preds = %83, %81
  %86 = phi i32 [ %82, %81 ], [ %84, %83 ]
  %87 = load i32*, i32** %5, align 8
  store i32 %86, i32* %87, align 4
  br label %88

88:                                               ; preds = %85, %73
  br label %89

89:                                               ; preds = %88, %36
  br label %90

90:                                               ; preds = %89, %33
  %91 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %91, i64* %3, align 8
  br label %92

92:                                               ; preds = %90, %62, %48, %20
  %93 = load i64, i64* %3, align 8
  ret i64 %93
}

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i64 @e1000_read_phy_reg(%struct.e1000_hw*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
