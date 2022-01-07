; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_link_status_10g_mrvl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_link_status_10g_mrvl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@MRVL88X2011_USER_DEV1_ADDR = common dso_local global i32 0, align 4
@MRVL88X2011_10G_PMD_STATUS_2 = common dso_local global i32 0, align 4
@MRVL88X2011_PMA_PMD_STATUS_1 = common dso_local global i32 0, align 4
@MRVL88X2011_LNK_STATUS_OK = common dso_local global i32 0, align 4
@MRVL88X2011_USER_DEV3_ADDR = common dso_local global i32 0, align 4
@MRVL88X2011_USER_DEV4_ADDR = common dso_local global i32 0, align 4
@MRVL88X2011_10G_XGXS_LANE_STAT = common dso_local global i32 0, align 4
@PHYXS_XGXS_LANE_STAT_ALINGED = common dso_local global i32 0, align 4
@PHYXS_XGXS_LANE_STAT_LANE3 = common dso_local global i32 0, align 4
@PHYXS_XGXS_LANE_STAT_LANE2 = common dso_local global i32 0, align 4
@PHYXS_XGXS_LANE_STAT_LANE1 = common dso_local global i32 0, align 4
@PHYXS_XGXS_LANE_STAT_LANE0 = common dso_local global i32 0, align 4
@PHYXS_XGXS_LANE_STAT_MAGIC = common dso_local global i32 0, align 4
@SPEED_10000 = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@MRVL88X2011_LED_CTL_PCS_ACT = common dso_local global i32 0, align 4
@MRVL88X2011_LED_CTL_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*, i32*)* @link_status_10g_mrvl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @link_status_10g_mrvl(%struct.niu* %0, i32* %1) #0 {
  %3 = alloca %struct.niu*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.niu*, %struct.niu** %3, align 8
  %10 = load %struct.niu*, %struct.niu** %3, align 8
  %11 = getelementptr inbounds %struct.niu, %struct.niu* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @MRVL88X2011_USER_DEV1_ADDR, align 4
  %14 = load i32, i32* @MRVL88X2011_10G_PMD_STATUS_2, align 4
  %15 = call i32 @mdio_read(%struct.niu* %9, i32 %12, i32 %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %109

19:                                               ; preds = %2
  %20 = load %struct.niu*, %struct.niu** %3, align 8
  %21 = load %struct.niu*, %struct.niu** %3, align 8
  %22 = getelementptr inbounds %struct.niu, %struct.niu* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @MRVL88X2011_USER_DEV1_ADDR, align 4
  %25 = load i32, i32* @MRVL88X2011_PMA_PMD_STATUS_1, align 4
  %26 = call i32 @mdio_read(%struct.niu* %20, i32 %23, i32 %24, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  br label %109

30:                                               ; preds = %19
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @MRVL88X2011_LNK_STATUS_OK, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 1, i32 0
  store i32 %36, i32* %7, align 4
  %37 = load %struct.niu*, %struct.niu** %3, align 8
  %38 = load %struct.niu*, %struct.niu** %3, align 8
  %39 = getelementptr inbounds %struct.niu, %struct.niu* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @MRVL88X2011_USER_DEV3_ADDR, align 4
  %42 = load i32, i32* @MRVL88X2011_PMA_PMD_STATUS_1, align 4
  %43 = call i32 @mdio_read(%struct.niu* %37, i32 %40, i32 %41, i32 %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %30
  br label %109

47:                                               ; preds = %30
  %48 = load %struct.niu*, %struct.niu** %3, align 8
  %49 = load %struct.niu*, %struct.niu** %3, align 8
  %50 = getelementptr inbounds %struct.niu, %struct.niu* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @MRVL88X2011_USER_DEV3_ADDR, align 4
  %53 = load i32, i32* @MRVL88X2011_PMA_PMD_STATUS_1, align 4
  %54 = call i32 @mdio_read(%struct.niu* %48, i32 %51, i32 %52, i32 %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  br label %109

58:                                               ; preds = %47
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @MRVL88X2011_LNK_STATUS_OK, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i32 1, i32 0
  store i32 %64, i32* %8, align 4
  %65 = load %struct.niu*, %struct.niu** %3, align 8
  %66 = load %struct.niu*, %struct.niu** %3, align 8
  %67 = getelementptr inbounds %struct.niu, %struct.niu* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @MRVL88X2011_USER_DEV4_ADDR, align 4
  %70 = load i32, i32* @MRVL88X2011_10G_XGXS_LANE_STAT, align 4
  %71 = call i32 @mdio_read(%struct.niu* %65, i32 %68, i32 %69, i32 %70)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %58
  br label %109

75:                                               ; preds = %58
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @PHYXS_XGXS_LANE_STAT_ALINGED, align 4
  %78 = load i32, i32* @PHYXS_XGXS_LANE_STAT_LANE3, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @PHYXS_XGXS_LANE_STAT_LANE2, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @PHYXS_XGXS_LANE_STAT_LANE1, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @PHYXS_XGXS_LANE_STAT_LANE0, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @PHYXS_XGXS_LANE_STAT_MAGIC, align 4
  %87 = or i32 %85, %86
  %88 = or i32 %87, 2048
  %89 = icmp eq i32 %76, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %75
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br label %96

96:                                               ; preds = %93, %90
  %97 = phi i1 [ false, %90 ], [ %95, %93 ]
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i32 1, i32 0
  store i32 %99, i32* %6, align 4
  br label %100

100:                                              ; preds = %96, %75
  %101 = load i32, i32* @SPEED_10000, align 4
  %102 = load %struct.niu*, %struct.niu** %3, align 8
  %103 = getelementptr inbounds %struct.niu, %struct.niu* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  store i32 %101, i32* %104, align 4
  %105 = load i32, i32* @DUPLEX_FULL, align 4
  %106 = load %struct.niu*, %struct.niu** %3, align 8
  %107 = getelementptr inbounds %struct.niu, %struct.niu* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  store i32 %105, i32* %108, align 4
  store i32 0, i32* %5, align 4
  br label %109

109:                                              ; preds = %100, %74, %57, %46, %29, %18
  %110 = load %struct.niu*, %struct.niu** %3, align 8
  %111 = load i32, i32* %6, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %109
  %114 = load i32, i32* @MRVL88X2011_LED_CTL_PCS_ACT, align 4
  br label %117

115:                                              ; preds = %109
  %116 = load i32, i32* @MRVL88X2011_LED_CTL_OFF, align 4
  br label %117

117:                                              ; preds = %115, %113
  %118 = phi i32 [ %114, %113 ], [ %116, %115 ]
  %119 = call i32 @mrvl88x2011_act_led(%struct.niu* %110, i32 %118)
  %120 = load i32, i32* %6, align 4
  %121 = load i32*, i32** %4, align 8
  store i32 %120, i32* %121, align 4
  %122 = load i32, i32* %5, align 4
  ret i32 %122
}

declare dso_local i32 @mdio_read(%struct.niu*, i32, i32, i32) #1

declare dso_local i32 @mrvl88x2011_act_led(%struct.niu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
