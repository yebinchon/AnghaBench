; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_wait_reset_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_wait_reset_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_phy = type { i64 }
%struct.link_params = type { i32 }

@PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM54618SE = common dso_local global i64 0, align 8
@MDIO_PMA_REG_CTRL = common dso_local global i32 0, align 4
@MDIO_PMA_DEVAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Warning: PHY was not initialized, Port %d\0A\00", align 1
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"control reg 0x%x (after %d ms)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, %struct.bnx2x_phy*, %struct.link_params*)* @bnx2x_wait_reset_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_wait_reset_complete(%struct.bnx2x* %0, %struct.bnx2x_phy* %1, %struct.link_params* %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca %struct.bnx2x_phy*, align 8
  %6 = alloca %struct.link_params*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store %struct.bnx2x_phy* %1, %struct.bnx2x_phy** %5, align 8
  store %struct.link_params* %2, %struct.link_params** %6, align 8
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %36, %3
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 1000
  br i1 %11, label %12, label %39

12:                                               ; preds = %9
  %13 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %14 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM54618SE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %12
  %19 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %20 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %21 = load i32, i32* @MDIO_PMA_REG_CTRL, align 4
  %22 = call i32 @bnx2x_cl22_read(%struct.bnx2x* %19, %struct.bnx2x_phy* %20, i32 %21, i32* %8)
  br label %29

23:                                               ; preds = %12
  %24 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %25 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %26 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %27 = load i32, i32* @MDIO_PMA_REG_CTRL, align 4
  %28 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %24, %struct.bnx2x_phy* %25, i32 %26, i32 %27, i32* %8)
  br label %29

29:                                               ; preds = %23, %18
  %30 = load i32, i32* %8, align 4
  %31 = and i32 %30, 32768
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  br label %39

34:                                               ; preds = %29
  %35 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %36

36:                                               ; preds = %34
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  br label %9

39:                                               ; preds = %33, %9
  %40 = load i32, i32* %7, align 4
  %41 = icmp eq i32 %40, 1000
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %44 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.link_params*, %struct.link_params** %6, align 8
  %47 = getelementptr inbounds %struct.link_params, %struct.link_params* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @netdev_err(i32 %45, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %42, %39
  %51 = load i32, i32* @NETIF_MSG_LINK, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @DP(i32 %51, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %53)
  %55 = load i32, i32* %7, align 4
  ret i32 %55
}

declare dso_local i32 @bnx2x_cl22_read(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32*) #1

declare dso_local i32 @bnx2x_cl45_read(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @netdev_err(i32, i8*, i32) #1

declare dso_local i32 @DP(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
