; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sunhme.c_hme_get_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sunhme.c_hme_get_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_cmd = type { i32, i64, i8*, i32, i64, i32, i32 }
%struct.happy_meal = type { i32, i32, i32, i32 }

@SUPPORTED_10baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_Autoneg = common dso_local global i32 0, align 4
@SUPPORTED_TP = common dso_local global i32 0, align 4
@SUPPORTED_MII = common dso_local global i32 0, align 4
@PORT_TP = common dso_local global i32 0, align 4
@XCVR_INTERNAL = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@MII_LPA = common dso_local global i32 0, align 4
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@LPA_100HALF = common dso_local global i32 0, align 4
@LPA_100FULL = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i64 0, align 8
@SPEED_10 = common dso_local global i64 0, align 8
@DUPLEX_FULL = common dso_local global i8* null, align 8
@DUPLEX_HALF = common dso_local global i8* null, align 8
@LPA_10FULL = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@BMCR_SPEED100 = common dso_local global i32 0, align 4
@BMCR_FULLDPLX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_cmd*)* @hme_get_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hme_get_settings(%struct.net_device* %0, %struct.ethtool_cmd* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_cmd*, align 8
  %5 = alloca %struct.happy_meal*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_cmd* %1, %struct.ethtool_cmd** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.happy_meal* @netdev_priv(%struct.net_device* %6)
  store %struct.happy_meal* %7, %struct.happy_meal** %5, align 8
  %8 = load i32, i32* @SUPPORTED_10baseT_Half, align 4
  %9 = load i32, i32* @SUPPORTED_10baseT_Full, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @SUPPORTED_100baseT_Half, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @SUPPORTED_100baseT_Full, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @SUPPORTED_TP, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @SUPPORTED_MII, align 4
  %20 = or i32 %18, %19
  %21 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %22 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* @PORT_TP, align 4
  %24 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %25 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %24, i32 0, i32 6
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @XCVR_INTERNAL, align 4
  %27 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %28 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %27, i32 0, i32 5
  store i32 %26, i32* %28, align 8
  %29 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %30 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %29, i32 0, i32 4
  store i64 0, i64* %30, align 8
  %31 = load %struct.happy_meal*, %struct.happy_meal** %5, align 8
  %32 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %31, i32 0, i32 2
  %33 = call i32 @spin_lock_irq(i32* %32)
  %34 = load %struct.happy_meal*, %struct.happy_meal** %5, align 8
  %35 = load %struct.happy_meal*, %struct.happy_meal** %5, align 8
  %36 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @MII_BMCR, align 4
  %39 = call i8* @happy_meal_tcvr_read(%struct.happy_meal* %34, i32 %37, i32 %38)
  %40 = ptrtoint i8* %39 to i32
  %41 = load %struct.happy_meal*, %struct.happy_meal** %5, align 8
  %42 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.happy_meal*, %struct.happy_meal** %5, align 8
  %44 = load %struct.happy_meal*, %struct.happy_meal** %5, align 8
  %45 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @MII_LPA, align 4
  %48 = call i8* @happy_meal_tcvr_read(%struct.happy_meal* %43, i32 %46, i32 %47)
  %49 = ptrtoint i8* %48 to i32
  %50 = load %struct.happy_meal*, %struct.happy_meal** %5, align 8
  %51 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.happy_meal*, %struct.happy_meal** %5, align 8
  %53 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %52, i32 0, i32 2
  %54 = call i32 @spin_unlock_irq(i32* %53)
  %55 = load %struct.happy_meal*, %struct.happy_meal** %5, align 8
  %56 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @BMCR_ANENABLE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %117

61:                                               ; preds = %2
  %62 = load i32, i32* @AUTONEG_ENABLE, align 4
  %63 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %64 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 8
  %65 = load %struct.happy_meal*, %struct.happy_meal** %5, align 8
  %66 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @LPA_100HALF, align 4
  %69 = load i32, i32* @LPA_100FULL, align 4
  %70 = or i32 %68, %69
  %71 = and i32 %67, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %61
  %74 = load i64, i64* @SPEED_100, align 8
  br label %77

75:                                               ; preds = %61
  %76 = load i64, i64* @SPEED_10, align 8
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i64 [ %74, %73 ], [ %76, %75 ]
  %79 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %80 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %79, i32 0, i32 1
  store i64 %78, i64* %80, align 8
  %81 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %82 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @SPEED_100, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %101

86:                                               ; preds = %77
  %87 = load %struct.happy_meal*, %struct.happy_meal** %5, align 8
  %88 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @LPA_100FULL, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %86
  %94 = load i8*, i8** @DUPLEX_FULL, align 8
  br label %97

95:                                               ; preds = %86
  %96 = load i8*, i8** @DUPLEX_HALF, align 8
  br label %97

97:                                               ; preds = %95, %93
  %98 = phi i8* [ %94, %93 ], [ %96, %95 ]
  %99 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %100 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %99, i32 0, i32 2
  store i8* %98, i8** %100, align 8
  br label %116

101:                                              ; preds = %77
  %102 = load %struct.happy_meal*, %struct.happy_meal** %5, align 8
  %103 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @LPA_10FULL, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %101
  %109 = load i8*, i8** @DUPLEX_FULL, align 8
  br label %112

110:                                              ; preds = %101
  %111 = load i8*, i8** @DUPLEX_HALF, align 8
  br label %112

112:                                              ; preds = %110, %108
  %113 = phi i8* [ %109, %108 ], [ %111, %110 ]
  %114 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %115 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %114, i32 0, i32 2
  store i8* %113, i8** %115, align 8
  br label %116

116:                                              ; preds = %112, %97
  br label %149

117:                                              ; preds = %2
  %118 = load i32, i32* @AUTONEG_DISABLE, align 4
  %119 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %120 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %119, i32 0, i32 3
  store i32 %118, i32* %120, align 8
  %121 = load %struct.happy_meal*, %struct.happy_meal** %5, align 8
  %122 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @BMCR_SPEED100, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %117
  %128 = load i64, i64* @SPEED_100, align 8
  br label %131

129:                                              ; preds = %117
  %130 = load i64, i64* @SPEED_10, align 8
  br label %131

131:                                              ; preds = %129, %127
  %132 = phi i64 [ %128, %127 ], [ %130, %129 ]
  %133 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %134 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %133, i32 0, i32 1
  store i64 %132, i64* %134, align 8
  %135 = load %struct.happy_meal*, %struct.happy_meal** %5, align 8
  %136 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @BMCR_FULLDPLX, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %131
  %142 = load i8*, i8** @DUPLEX_FULL, align 8
  br label %145

143:                                              ; preds = %131
  %144 = load i8*, i8** @DUPLEX_HALF, align 8
  br label %145

145:                                              ; preds = %143, %141
  %146 = phi i8* [ %142, %141 ], [ %144, %143 ]
  %147 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %148 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %147, i32 0, i32 2
  store i8* %146, i8** %148, align 8
  br label %149

149:                                              ; preds = %145, %116
  ret i32 0
}

declare dso_local %struct.happy_meal* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i8* @happy_meal_tcvr_read(%struct.happy_meal*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
