; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_phy.c_ixgbe_write_phy_reg_mdi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_phy.c_ixgbe_write_phy_reg_mdi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@IXGBE_MSRWD = common dso_local global i32 0, align 4
@IXGBE_MSCA_NP_ADDR_SHIFT = common dso_local global i64 0, align 8
@IXGBE_MSCA_DEV_TYPE_SHIFT = common dso_local global i64 0, align 8
@IXGBE_MSCA_PHY_ADDR_SHIFT = common dso_local global i64 0, align 8
@IXGBE_MSCA_ADDR_CYCLE = common dso_local global i64 0, align 8
@IXGBE_MSCA_MDI_COMMAND = common dso_local global i64 0, align 8
@IXGBE_MSCA = common dso_local global i32 0, align 4
@IXGBE_MDIO_COMMAND_TIMEOUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"PHY address cmd didn't complete\0A\00", align 1
@IXGBE_ERR_PHY = common dso_local global i32 0, align 4
@IXGBE_MSCA_WRITE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"PHY write cmd didn't complete\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_write_phy_reg_mdi(%struct.ixgbe_hw* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ixgbe_hw*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %13 = load i32, i32* @IXGBE_MSRWD, align 4
  %14 = load i64, i64* %9, align 8
  %15 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %12, i32 %13, i64 %14)
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @IXGBE_MSCA_NP_ADDR_SHIFT, align 8
  %18 = shl i64 %16, %17
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* @IXGBE_MSCA_DEV_TYPE_SHIFT, align 8
  %21 = shl i64 %19, %20
  %22 = or i64 %18, %21
  %23 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %24 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @IXGBE_MSCA_PHY_ADDR_SHIFT, align 8
  %29 = shl i64 %27, %28
  %30 = or i64 %22, %29
  %31 = load i64, i64* @IXGBE_MSCA_ADDR_CYCLE, align 8
  %32 = load i64, i64* @IXGBE_MSCA_MDI_COMMAND, align 8
  %33 = or i64 %31, %32
  %34 = or i64 %30, %33
  store i64 %34, i64* %11, align 8
  %35 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %36 = load i32, i32* @IXGBE_MSCA, align 4
  %37 = load i64, i64* %11, align 8
  %38 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %35, i32 %36, i64 %37)
  store i64 0, i64* %10, align 8
  br label %39

39:                                               ; preds = %54, %4
  %40 = load i64, i64* %10, align 8
  %41 = load i64, i64* @IXGBE_MDIO_COMMAND_TIMEOUT, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %39
  %44 = call i32 @udelay(i32 10)
  %45 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %46 = load i32, i32* @IXGBE_MSCA, align 4
  %47 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %45, i32 %46)
  store i64 %47, i64* %11, align 8
  %48 = load i64, i64* %11, align 8
  %49 = load i64, i64* @IXGBE_MSCA_MDI_COMMAND, align 8
  %50 = and i64 %48, %49
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  br label %57

53:                                               ; preds = %43
  br label %54

54:                                               ; preds = %53
  %55 = load i64, i64* %10, align 8
  %56 = add nsw i64 %55, 1
  store i64 %56, i64* %10, align 8
  br label %39

57:                                               ; preds = %52, %39
  %58 = load i64, i64* %11, align 8
  %59 = load i64, i64* @IXGBE_MSCA_MDI_COMMAND, align 8
  %60 = and i64 %58, %59
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %64 = call i32 @hw_dbg(%struct.ixgbe_hw* %63, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %65 = load i32, i32* @IXGBE_ERR_PHY, align 4
  store i32 %65, i32* %5, align 4
  br label %118

66:                                               ; preds = %57
  %67 = load i64, i64* %7, align 8
  %68 = load i64, i64* @IXGBE_MSCA_NP_ADDR_SHIFT, align 8
  %69 = shl i64 %67, %68
  %70 = load i64, i64* %8, align 8
  %71 = load i64, i64* @IXGBE_MSCA_DEV_TYPE_SHIFT, align 8
  %72 = shl i64 %70, %71
  %73 = or i64 %69, %72
  %74 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %75 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @IXGBE_MSCA_PHY_ADDR_SHIFT, align 8
  %80 = shl i64 %78, %79
  %81 = or i64 %73, %80
  %82 = load i64, i64* @IXGBE_MSCA_WRITE, align 8
  %83 = load i64, i64* @IXGBE_MSCA_MDI_COMMAND, align 8
  %84 = or i64 %82, %83
  %85 = or i64 %81, %84
  store i64 %85, i64* %11, align 8
  %86 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %87 = load i32, i32* @IXGBE_MSCA, align 4
  %88 = load i64, i64* %11, align 8
  %89 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %86, i32 %87, i64 %88)
  store i64 0, i64* %10, align 8
  br label %90

90:                                               ; preds = %105, %66
  %91 = load i64, i64* %10, align 8
  %92 = load i64, i64* @IXGBE_MDIO_COMMAND_TIMEOUT, align 8
  %93 = icmp slt i64 %91, %92
  br i1 %93, label %94, label %108

94:                                               ; preds = %90
  %95 = call i32 @udelay(i32 10)
  %96 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %97 = load i32, i32* @IXGBE_MSCA, align 4
  %98 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %96, i32 %97)
  store i64 %98, i64* %11, align 8
  %99 = load i64, i64* %11, align 8
  %100 = load i64, i64* @IXGBE_MSCA_MDI_COMMAND, align 8
  %101 = and i64 %99, %100
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %94
  br label %108

104:                                              ; preds = %94
  br label %105

105:                                              ; preds = %104
  %106 = load i64, i64* %10, align 8
  %107 = add nsw i64 %106, 1
  store i64 %107, i64* %10, align 8
  br label %90

108:                                              ; preds = %103, %90
  %109 = load i64, i64* %11, align 8
  %110 = load i64, i64* @IXGBE_MSCA_MDI_COMMAND, align 8
  %111 = and i64 %109, %110
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %108
  %114 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %115 = call i32 @hw_dbg(%struct.ixgbe_hw* %114, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %116 = load i32, i32* @IXGBE_ERR_PHY, align 4
  store i32 %116, i32* %5, align 4
  br label %118

117:                                              ; preds = %108
  store i32 0, i32* %5, align 4
  br label %118

118:                                              ; preds = %117, %113, %62
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
