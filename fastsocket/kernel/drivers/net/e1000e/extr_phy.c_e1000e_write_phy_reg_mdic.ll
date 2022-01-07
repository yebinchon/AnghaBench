; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_phy.c_e1000e_write_phy_reg_mdic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_phy.c_e1000e_write_phy_reg_mdic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__, %struct.e1000_phy_info }
%struct.TYPE_2__ = type { i64 }
%struct.e1000_phy_info = type { i32 }

@MAX_PHY_REG_ADDRESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"PHY Address %d is out of range\0A\00", align 1
@E1000_ERR_PARAM = common dso_local global i32 0, align 4
@E1000_MDIC_REG_SHIFT = common dso_local global i32 0, align 4
@E1000_MDIC_PHY_SHIFT = common dso_local global i32 0, align 4
@E1000_MDIC_OP_WRITE = common dso_local global i32 0, align 4
@MDIC = common dso_local global i32 0, align 4
@E1000_GEN_POLL_TIMEOUT = common dso_local global i32 0, align 4
@E1000_MDIC_READY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"MDI Write did not complete\0A\00", align 1
@E1000_ERR_PHY = common dso_local global i32 0, align 4
@E1000_MDIC_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"MDI Error\0A\00", align 1
@E1000_MDIC_REG_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"MDI Write offset error - requested %d, returned %d\0A\00", align 1
@e1000_pch2lan = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @e1000e_write_phy_reg_mdic(%struct.e1000_hw* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.e1000_phy_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %11 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %12 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %11, i32 0, i32 1
  store %struct.e1000_phy_info* %12, %struct.e1000_phy_info** %8, align 8
  store i32 0, i32* %10, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @MAX_PHY_REG_ADDRESS, align 4
  %15 = icmp sgt i32 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @E1000_ERR_PARAM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %103

21:                                               ; preds = %3
  %22 = load i64, i64* %7, align 8
  %23 = trunc i64 %22 to i32
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @E1000_MDIC_REG_SHIFT, align 4
  %26 = shl i32 %24, %25
  %27 = or i32 %23, %26
  %28 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %8, align 8
  %29 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @E1000_MDIC_PHY_SHIFT, align 4
  %32 = shl i32 %30, %31
  %33 = or i32 %27, %32
  %34 = load i32, i32* @E1000_MDIC_OP_WRITE, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* @MDIC, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @ew32(i32 %36, i32 %37)
  store i32 0, i32* %9, align 4
  br label %39

39:                                               ; preds = %54, %21
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @E1000_GEN_POLL_TIMEOUT, align 4
  %42 = mul nsw i32 %41, 3
  %43 = icmp slt i32 %40, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %39
  %45 = call i32 @udelay(i32 50)
  %46 = load i32, i32* @MDIC, align 4
  %47 = call i32 @er32(i32 %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @E1000_MDIC_READY, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  br label %57

53:                                               ; preds = %44
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %39

57:                                               ; preds = %52, %39
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @E1000_MDIC_READY, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %57
  %63 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32, i32* @E1000_ERR_PHY, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %103

66:                                               ; preds = %57
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @E1000_MDIC_ERROR, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %73 = load i32, i32* @E1000_ERR_PHY, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %103

75:                                               ; preds = %66
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* @E1000_MDIC_REG_MASK, align 4
  %78 = and i32 %76, %77
  %79 = load i32, i32* @E1000_MDIC_REG_SHIFT, align 4
  %80 = ashr i32 %78, %79
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %93

83:                                               ; preds = %75
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* @E1000_MDIC_REG_MASK, align 4
  %87 = and i32 %85, %86
  %88 = load i32, i32* @E1000_MDIC_REG_SHIFT, align 4
  %89 = ashr i32 %87, %88
  %90 = call i32 (i8*, ...) @e_dbg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %84, i32 %89)
  %91 = load i32, i32* @E1000_ERR_PHY, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %4, align 4
  br label %103

93:                                               ; preds = %75
  %94 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %95 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @e1000_pch2lan, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %93
  %101 = call i32 @udelay(i32 100)
  br label %102

102:                                              ; preds = %100, %93
  store i32 0, i32* %4, align 4
  br label %103

103:                                              ; preds = %102, %83, %71, %62, %16
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i32 @e_dbg(i8*, ...) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @er32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
