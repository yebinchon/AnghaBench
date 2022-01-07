; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_link_status_10g_bcom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_link_status_10g_bcom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@BCM8704_PMA_PMD_DEV_ADDR = common dso_local global i32 0, align 4
@BCM8704_PMD_RCV_SIGDET = common dso_local global i32 0, align 4
@PMD_RCV_SIGDET_GLOBAL = common dso_local global i32 0, align 4
@BCM8704_PCS_DEV_ADDR = common dso_local global i32 0, align 4
@BCM8704_PCS_10G_R_STATUS = common dso_local global i32 0, align 4
@PCS_10G_R_STATUS_BLK_LOCK = common dso_local global i32 0, align 4
@BCM8704_PHYXS_DEV_ADDR = common dso_local global i32 0, align 4
@BCM8704_PHYXS_XGXS_LANE_STAT = common dso_local global i32 0, align 4
@PHYXS_XGXS_LANE_STAT_ALINGED = common dso_local global i32 0, align 4
@PHYXS_XGXS_LANE_STAT_MAGIC = common dso_local global i32 0, align 4
@PHYXS_XGXS_LANE_STAT_LANE3 = common dso_local global i32 0, align 4
@PHYXS_XGXS_LANE_STAT_LANE2 = common dso_local global i32 0, align 4
@PHYXS_XGXS_LANE_STAT_LANE1 = common dso_local global i32 0, align 4
@PHYXS_XGXS_LANE_STAT_LANE0 = common dso_local global i32 0, align 4
@SPEED_10000 = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*, i32*)* @link_status_10g_bcom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @link_status_10g_bcom(%struct.niu* %0, i32* %1) #0 {
  %3 = alloca %struct.niu*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.niu*, %struct.niu** %3, align 8
  %8 = load %struct.niu*, %struct.niu** %3, align 8
  %9 = getelementptr inbounds %struct.niu, %struct.niu* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @BCM8704_PMA_PMD_DEV_ADDR, align 4
  %12 = load i32, i32* @BCM8704_PMD_RCV_SIGDET, align 4
  %13 = call i32 @mdio_read(%struct.niu* %7, i32 %10, i32 %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %75

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @PMD_RCV_SIGDET_GLOBAL, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %75

23:                                               ; preds = %17
  %24 = load %struct.niu*, %struct.niu** %3, align 8
  %25 = load %struct.niu*, %struct.niu** %3, align 8
  %26 = getelementptr inbounds %struct.niu, %struct.niu* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @BCM8704_PCS_DEV_ADDR, align 4
  %29 = load i32, i32* @BCM8704_PCS_10G_R_STATUS, align 4
  %30 = call i32 @mdio_read(%struct.niu* %24, i32 %27, i32 %28, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  br label %75

34:                                               ; preds = %23
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @PCS_10G_R_STATUS_BLK_LOCK, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  br label %75

40:                                               ; preds = %34
  %41 = load %struct.niu*, %struct.niu** %3, align 8
  %42 = load %struct.niu*, %struct.niu** %3, align 8
  %43 = getelementptr inbounds %struct.niu, %struct.niu* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @BCM8704_PHYXS_DEV_ADDR, align 4
  %46 = load i32, i32* @BCM8704_PHYXS_XGXS_LANE_STAT, align 4
  %47 = call i32 @mdio_read(%struct.niu* %41, i32 %44, i32 %45, i32 %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  br label %75

51:                                               ; preds = %40
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @PHYXS_XGXS_LANE_STAT_ALINGED, align 4
  %54 = load i32, i32* @PHYXS_XGXS_LANE_STAT_MAGIC, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @PHYXS_XGXS_LANE_STAT_LANE3, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @PHYXS_XGXS_LANE_STAT_LANE2, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @PHYXS_XGXS_LANE_STAT_LANE1, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @PHYXS_XGXS_LANE_STAT_LANE0, align 4
  %63 = or i32 %61, %62
  %64 = icmp ne i32 %52, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %51
  store i32 0, i32* %5, align 4
  br label %75

66:                                               ; preds = %51
  store i32 1, i32* %6, align 4
  %67 = load i32, i32* @SPEED_10000, align 4
  %68 = load %struct.niu*, %struct.niu** %3, align 8
  %69 = getelementptr inbounds %struct.niu, %struct.niu* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  store i32 %67, i32* %70, align 4
  %71 = load i32, i32* @DUPLEX_FULL, align 4
  %72 = load %struct.niu*, %struct.niu** %3, align 8
  %73 = getelementptr inbounds %struct.niu, %struct.niu* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 4
  store i32 0, i32* %5, align 4
  br label %75

75:                                               ; preds = %66, %65, %50, %39, %33, %22, %16
  %76 = load i32, i32* %6, align 4
  %77 = load i32*, i32** %4, align 8
  store i32 %76, i32* %77, align 4
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32 @mdio_read(%struct.niu*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
