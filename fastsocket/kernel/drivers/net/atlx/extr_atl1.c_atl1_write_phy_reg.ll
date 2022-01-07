; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atlx/extr_atl1.c_atl1_write_phy_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atlx/extr_atl1.c_atl1_write_phy_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1_hw = type { i64 }

@MDIO_DATA_MASK = common dso_local global i32 0, align 4
@MDIO_DATA_SHIFT = common dso_local global i32 0, align 4
@MDIO_REG_ADDR_MASK = common dso_local global i32 0, align 4
@MDIO_REG_ADDR_SHIFT = common dso_local global i32 0, align 4
@MDIO_SUP_PREAMBLE = common dso_local global i32 0, align 4
@MDIO_START = common dso_local global i32 0, align 4
@MDIO_CLK_25_4 = common dso_local global i32 0, align 4
@MDIO_CLK_SEL_SHIFT = common dso_local global i32 0, align 4
@REG_MDIO_CTRL = common dso_local global i64 0, align 8
@MDIO_WAIT_TIMES = common dso_local global i32 0, align 4
@MDIO_BUSY = common dso_local global i32 0, align 4
@ATLX_ERR_PHY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atl1_hw*, i32, i32)* @atl1_write_phy_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl1_write_phy_reg(%struct.atl1_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.atl1_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.atl1_hw* %0, %struct.atl1_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @MDIO_DATA_MASK, align 4
  %12 = and i32 %10, %11
  %13 = load i32, i32* @MDIO_DATA_SHIFT, align 4
  %14 = shl i32 %12, %13
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @MDIO_REG_ADDR_MASK, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @MDIO_REG_ADDR_SHIFT, align 4
  %19 = shl i32 %17, %18
  %20 = or i32 %14, %19
  %21 = load i32, i32* @MDIO_SUP_PREAMBLE, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @MDIO_START, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @MDIO_CLK_25_4, align 4
  %26 = load i32, i32* @MDIO_CLK_SEL_SHIFT, align 4
  %27 = shl i32 %25, %26
  %28 = or i32 %24, %27
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.atl1_hw*, %struct.atl1_hw** %5, align 8
  %31 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @REG_MDIO_CTRL, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @iowrite32(i32 %29, i64 %34)
  %36 = load %struct.atl1_hw*, %struct.atl1_hw** %5, align 8
  %37 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @REG_MDIO_CTRL, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @ioread32(i64 %40)
  store i32 0, i32* %8, align 4
  br label %42

42:                                               ; preds = %62, %3
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @MDIO_WAIT_TIMES, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %65

46:                                               ; preds = %42
  %47 = call i32 @udelay(i32 2)
  %48 = load %struct.atl1_hw*, %struct.atl1_hw** %5, align 8
  %49 = getelementptr inbounds %struct.atl1_hw, %struct.atl1_hw* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @REG_MDIO_CTRL, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @ioread32(i64 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @MDIO_START, align 4
  %56 = load i32, i32* @MDIO_BUSY, align 4
  %57 = or i32 %55, %56
  %58 = and i32 %54, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %46
  br label %65

61:                                               ; preds = %46
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
  br label %42

65:                                               ; preds = %60, %42
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @MDIO_START, align 4
  %68 = load i32, i32* @MDIO_BUSY, align 4
  %69 = or i32 %67, %68
  %70 = and i32 %66, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %65
  store i32 0, i32* %4, align 4
  br label %75

73:                                               ; preds = %65
  %74 = load i32, i32* @ATLX_ERR_PHY, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %73, %72
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
