; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_848xx_set_led.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_848xx_set_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_reg_set = type { i32, i32, i32, i32, i32, i32 }
%struct.bnx2x = type { i32 }
%struct.bnx2x_phy = type { i64 }

@bnx2x_848xx_set_led.reg_set = internal global [6 x %struct.bnx2x_reg_set] [%struct.bnx2x_reg_set { i32 134, i32 133, i32 128, i32 0, i32 0, i32 0 }, %struct.bnx2x_reg_set { i32 134, i32 132, i32 24, i32 0, i32 0, i32 0 }, %struct.bnx2x_reg_set { i32 134, i32 130, i32 6, i32 0, i32 0, i32 0 }, %struct.bnx2x_reg_set { i32 134, i32 131, i32 0, i32 0, i32 0, i32 0 }, %struct.bnx2x_reg_set { i32 134, i32 128, i32 129, i32 0, i32 0, i32 0 }, %struct.bnx2x_reg_set { i32 135, i32 65531, i32 65533, i32 0, i32 0, i32 0 }], align 16
@MDIO_PMA_REG_8481_LINK_SIGNAL = common dso_local global i32 0, align 4
@PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84833 = common dso_local global i64 0, align 8
@PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84834 = common dso_local global i64 0, align 8
@MDIO_PMA_REG_84833_CTL_LED_CTL_1 = common dso_local global i32 0, align 4
@MDIO_PMA_REG_84823_CTL_LED_CTL_1 = common dso_local global i32 0, align 4
@MDIO_PMA_REG_84823_LED3_STRETCH_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_phy*)* @bnx2x_848xx_set_led to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_848xx_set_led(%struct.bnx2x* %0, %struct.bnx2x_phy* %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca %struct.bnx2x_phy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store %struct.bnx2x_phy* %1, %struct.bnx2x_phy** %4, align 8
  %8 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %9 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %10 = load i32, i32* @MDIO_PMA_REG_8481_LINK_SIGNAL, align 4
  %11 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %8, %struct.bnx2x_phy* %9, i32 134, i32 %10, i32* %5)
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, 65024
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = or i32 %14, 146
  store i32 %15, i32* %5, align 4
  %16 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %17 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %18 = load i32, i32* @MDIO_PMA_REG_8481_LINK_SIGNAL, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %16, %struct.bnx2x_phy* %17, i32 134, i32 %18, i32 %19)
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %44, %2
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @ARRAY_SIZE(%struct.bnx2x_reg_set* getelementptr inbounds ([6 x %struct.bnx2x_reg_set], [6 x %struct.bnx2x_reg_set]* @bnx2x_848xx_set_led.reg_set, i64 0, i64 0))
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %47

25:                                               ; preds = %21
  %26 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %27 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [6 x %struct.bnx2x_reg_set], [6 x %struct.bnx2x_reg_set]* @bnx2x_848xx_set_led.reg_set, i64 0, i64 %29
  %31 = getelementptr inbounds %struct.bnx2x_reg_set, %struct.bnx2x_reg_set* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [6 x %struct.bnx2x_reg_set], [6 x %struct.bnx2x_reg_set]* @bnx2x_848xx_set_led.reg_set, i64 0, i64 %34
  %36 = getelementptr inbounds %struct.bnx2x_reg_set, %struct.bnx2x_reg_set* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [6 x %struct.bnx2x_reg_set], [6 x %struct.bnx2x_reg_set]* @bnx2x_848xx_set_led.reg_set, i64 0, i64 %39
  %41 = getelementptr inbounds %struct.bnx2x_reg_set, %struct.bnx2x_reg_set* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %26, %struct.bnx2x_phy* %27, i32 %32, i32 %37, i32 %42)
  br label %44

44:                                               ; preds = %25
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %21

47:                                               ; preds = %21
  %48 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %49 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84833, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %59, label %53

53:                                               ; preds = %47
  %54 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %55 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84834, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %53, %47
  %60 = load i32, i32* @MDIO_PMA_REG_84833_CTL_LED_CTL_1, align 4
  store i32 %60, i32* %6, align 4
  br label %63

61:                                               ; preds = %53
  %62 = load i32, i32* @MDIO_PMA_REG_84823_CTL_LED_CTL_1, align 4
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %61, %59
  %64 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %65 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @MDIO_PMA_REG_84823_LED3_STRETCH_EN, align 4
  %68 = call i32 @bnx2x_cl45_read_or_write(%struct.bnx2x* %64, %struct.bnx2x_phy* %65, i32 134, i32 %66, i32 %67)
  ret void
}

declare dso_local i32 @bnx2x_cl45_read(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32*) #1

declare dso_local i32 @bnx2x_cl45_write(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.bnx2x_reg_set*) #1

declare dso_local i32 @bnx2x_cl45_read_or_write(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
