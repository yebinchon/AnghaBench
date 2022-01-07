; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_phy.c_igb_write_phy_reg_i2c.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_phy.c_igb_write_phy_reg_i2c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_phy_info }
%struct.e1000_phy_info = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"PHY I2C Address %d is out of range.\0A\00", align 1
@E1000_ERR_CONFIG = common dso_local global i32 0, align 4
@E1000_I2CCMD_REG_ADDR_SHIFT = common dso_local global i32 0, align 4
@E1000_I2CCMD_PHY_ADDR_SHIFT = common dso_local global i32 0, align 4
@E1000_I2CCMD_OPCODE_WRITE = common dso_local global i32 0, align 4
@E1000_I2CCMD = common dso_local global i32 0, align 4
@E1000_I2CCMD_PHY_TIMEOUT = common dso_local global i32 0, align 4
@E1000_I2CCMD_READY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"I2CCMD Write did not complete\0A\00", align 1
@E1000_ERR_PHY = common dso_local global i32 0, align 4
@E1000_I2CCMD_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"I2CCMD Error bit set\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @igb_write_phy_reg_i2c(%struct.e1000_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.e1000_phy_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %13 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %12, i32 0, i32 0
  store %struct.e1000_phy_info* %13, %struct.e1000_phy_info** %8, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %15 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %3
  %20 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %21 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp sgt i32 %23, 7
  br i1 %24, label %25, label %33

25:                                               ; preds = %19, %3
  %26 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %27 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i8*, ...) @hw_dbg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @E1000_ERR_CONFIG, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %93

33:                                               ; preds = %19
  %34 = load i32, i32* %7, align 4
  %35 = ashr i32 %34, 8
  %36 = and i32 %35, 255
  %37 = load i32, i32* %7, align 4
  %38 = shl i32 %37, 8
  %39 = and i32 %38, 65280
  %40 = or i32 %36, %39
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @E1000_I2CCMD_REG_ADDR_SHIFT, align 4
  %43 = shl i32 %41, %42
  %44 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %8, align 8
  %45 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @E1000_I2CCMD_PHY_ADDR_SHIFT, align 4
  %48 = shl i32 %46, %47
  %49 = or i32 %43, %48
  %50 = load i32, i32* @E1000_I2CCMD_OPCODE_WRITE, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* %11, align 4
  %53 = or i32 %51, %52
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* @E1000_I2CCMD, align 4
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @wr32(i32 %54, i32 %55)
  store i32 0, i32* %9, align 4
  br label %57

57:                                               ; preds = %71, %33
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @E1000_I2CCMD_PHY_TIMEOUT, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %74

61:                                               ; preds = %57
  %62 = call i32 @udelay(i32 50)
  %63 = load i32, i32* @E1000_I2CCMD, align 4
  %64 = call i32 @rd32(i32 %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @E1000_I2CCMD_READY, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %74

70:                                               ; preds = %61
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %9, align 4
  br label %57

74:                                               ; preds = %69, %57
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* @E1000_I2CCMD_READY, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %74
  %80 = call i32 (i8*, ...) @hw_dbg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %81 = load i32, i32* @E1000_ERR_PHY, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %4, align 4
  br label %93

83:                                               ; preds = %74
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @E1000_I2CCMD_ERROR, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = call i32 (i8*, ...) @hw_dbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %90 = load i32, i32* @E1000_ERR_PHY, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %4, align 4
  br label %93

92:                                               ; preds = %83
  store i32 0, i32* %4, align 4
  br label %93

93:                                               ; preds = %92, %88, %79, %25
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i32 @hw_dbg(i8*, ...) #1

declare dso_local i32 @wr32(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @rd32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
