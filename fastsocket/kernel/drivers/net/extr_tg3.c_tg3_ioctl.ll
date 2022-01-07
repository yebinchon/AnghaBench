; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.mii_ioctl_data = type { i32, i32, i32, i32 }
%struct.tg3 = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.phy_device** }
%struct.phy_device = type { i32 }

@USE_PHYLIB = common dso_local global i32 0, align 4
@TG3_PHYFLG_IS_CONNECTED = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@TG3_PHY_MII_ADDR = common dso_local global i64 0, align 8
@TG3_PHYFLG_PHY_SERDES = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @tg3_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg3_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mii_ioctl_data*, align 8
  %9 = alloca %struct.tg3*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.phy_device*, align 8
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %14 = call %struct.mii_ioctl_data* @if_mii(%struct.ifreq* %13)
  store %struct.mii_ioctl_data* %14, %struct.mii_ioctl_data** %8, align 8
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = call %struct.tg3* @netdev_priv(%struct.net_device* %15)
  store %struct.tg3* %16, %struct.tg3** %9, align 8
  %17 = load %struct.tg3*, %struct.tg3** %9, align 8
  %18 = load i32, i32* @USE_PHYLIB, align 4
  %19 = call i64 @tg3_flag(%struct.tg3* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %44

21:                                               ; preds = %3
  %22 = load %struct.tg3*, %struct.tg3** %9, align 8
  %23 = getelementptr inbounds %struct.tg3, %struct.tg3* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @TG3_PHYFLG_IS_CONNECTED, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* @EAGAIN, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %133

31:                                               ; preds = %21
  %32 = load %struct.tg3*, %struct.tg3** %9, align 8
  %33 = getelementptr inbounds %struct.tg3, %struct.tg3* %32, i32 0, i32 3
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load %struct.phy_device**, %struct.phy_device*** %35, align 8
  %37 = load i64, i64* @TG3_PHY_MII_ADDR, align 8
  %38 = getelementptr inbounds %struct.phy_device*, %struct.phy_device** %36, i64 %37
  %39 = load %struct.phy_device*, %struct.phy_device** %38, align 8
  store %struct.phy_device* %39, %struct.phy_device** %11, align 8
  %40 = load %struct.phy_device*, %struct.phy_device** %11, align 8
  %41 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @phy_mii_ioctl(%struct.phy_device* %40, %struct.mii_ioctl_data* %41, i32 %42)
  store i32 %43, i32* %4, align 4
  br label %133

44:                                               ; preds = %3
  %45 = load i32, i32* %7, align 4
  switch i32 %45, label %129 [
    i32 131, label %46
    i32 130, label %52
    i32 128, label %88
    i32 129, label %124
  ]

46:                                               ; preds = %44
  %47 = load %struct.tg3*, %struct.tg3** %9, align 8
  %48 = getelementptr inbounds %struct.tg3, %struct.tg3* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %51 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %44, %46
  %53 = load %struct.tg3*, %struct.tg3** %9, align 8
  %54 = getelementptr inbounds %struct.tg3, %struct.tg3* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @TG3_PHYFLG_PHY_SERDES, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %130

60:                                               ; preds = %52
  %61 = load %struct.net_device*, %struct.net_device** %5, align 8
  %62 = call i32 @netif_running(%struct.net_device* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %60
  %65 = load i32, i32* @EAGAIN, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %133

67:                                               ; preds = %60
  %68 = load %struct.tg3*, %struct.tg3** %9, align 8
  %69 = getelementptr inbounds %struct.tg3, %struct.tg3* %68, i32 0, i32 2
  %70 = call i32 @spin_lock_bh(i32* %69)
  %71 = load %struct.tg3*, %struct.tg3** %9, align 8
  %72 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %73 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, 31
  %76 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %77 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, 31
  %80 = call i32 @__tg3_readphy(%struct.tg3* %71, i32 %75, i32 %79, i32* %12)
  store i32 %80, i32* %10, align 4
  %81 = load %struct.tg3*, %struct.tg3** %9, align 8
  %82 = getelementptr inbounds %struct.tg3, %struct.tg3* %81, i32 0, i32 2
  %83 = call i32 @spin_unlock_bh(i32* %82)
  %84 = load i32, i32* %12, align 4
  %85 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %86 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* %10, align 4
  store i32 %87, i32* %4, align 4
  br label %133

88:                                               ; preds = %44
  %89 = load %struct.tg3*, %struct.tg3** %9, align 8
  %90 = getelementptr inbounds %struct.tg3, %struct.tg3* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @TG3_PHYFLG_PHY_SERDES, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %88
  br label %130

96:                                               ; preds = %88
  %97 = load %struct.net_device*, %struct.net_device** %5, align 8
  %98 = call i32 @netif_running(%struct.net_device* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %96
  %101 = load i32, i32* @EAGAIN, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %4, align 4
  br label %133

103:                                              ; preds = %96
  %104 = load %struct.tg3*, %struct.tg3** %9, align 8
  %105 = getelementptr inbounds %struct.tg3, %struct.tg3* %104, i32 0, i32 2
  %106 = call i32 @spin_lock_bh(i32* %105)
  %107 = load %struct.tg3*, %struct.tg3** %9, align 8
  %108 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %109 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = and i32 %110, 31
  %112 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %113 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = and i32 %114, 31
  %116 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %117 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @__tg3_writephy(%struct.tg3* %107, i32 %111, i32 %115, i32 %118)
  store i32 %119, i32* %10, align 4
  %120 = load %struct.tg3*, %struct.tg3** %9, align 8
  %121 = getelementptr inbounds %struct.tg3, %struct.tg3* %120, i32 0, i32 2
  %122 = call i32 @spin_unlock_bh(i32* %121)
  %123 = load i32, i32* %10, align 4
  store i32 %123, i32* %4, align 4
  br label %133

124:                                              ; preds = %44
  %125 = load %struct.net_device*, %struct.net_device** %5, align 8
  %126 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %127 = load i32, i32* %7, align 4
  %128 = call i32 @tg3_hwtstamp_ioctl(%struct.net_device* %125, %struct.ifreq* %126, i32 %127)
  store i32 %128, i32* %4, align 4
  br label %133

129:                                              ; preds = %44
  br label %130

130:                                              ; preds = %129, %95, %59
  %131 = load i32, i32* @EOPNOTSUPP, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %4, align 4
  br label %133

133:                                              ; preds = %130, %124, %103, %100, %67, %64, %31, %28
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local %struct.mii_ioctl_data* @if_mii(%struct.ifreq*) #1

declare dso_local %struct.tg3* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @tg3_flag(%struct.tg3*, i32) #1

declare dso_local i32 @phy_mii_ioctl(%struct.phy_device*, %struct.mii_ioctl_data*, i32) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @__tg3_readphy(%struct.tg3*, i32, i32, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @__tg3_writephy(%struct.tg3*, i32, i32, i32) #1

declare dso_local i32 @tg3_hwtstamp_ioctl(%struct.net_device*, %struct.ifreq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
