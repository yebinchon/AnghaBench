; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_skge.c_skge_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_skge.c_skge_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.mii_ioctl_data = type { i32, i32, i32, i32 }
%struct.skge_port = type { i32, %struct.skge_hw* }
%struct.skge_hw = type { i32, i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@CHIP_ID_GENESIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @skge_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skge_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mii_ioctl_data*, align 8
  %9 = alloca %struct.skge_port*, align 8
  %10 = alloca %struct.skge_hw*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %14 = call %struct.mii_ioctl_data* @if_mii(%struct.ifreq* %13)
  store %struct.mii_ioctl_data* %14, %struct.mii_ioctl_data** %8, align 8
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = call %struct.skge_port* @netdev_priv(%struct.net_device* %15)
  store %struct.skge_port* %16, %struct.skge_port** %9, align 8
  %17 = load %struct.skge_port*, %struct.skge_port** %9, align 8
  %18 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %17, i32 0, i32 1
  %19 = load %struct.skge_hw*, %struct.skge_hw** %18, align 8
  store %struct.skge_hw* %19, %struct.skge_hw** %10, align 8
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %11, align 4
  %22 = load %struct.net_device*, %struct.net_device** %5, align 8
  %23 = call i32 @netif_running(%struct.net_device* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %113

28:                                               ; preds = %3
  %29 = load i32, i32* %7, align 4
  switch i32 %29, label %111 [
    i32 130, label %30
    i32 129, label %36
    i32 128, label %72
  ]

30:                                               ; preds = %28
  %31 = load %struct.skge_hw*, %struct.skge_hw** %10, align 8
  %32 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %35 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  br label %36

36:                                               ; preds = %28, %30
  store i32 0, i32* %12, align 4
  %37 = load %struct.skge_hw*, %struct.skge_hw** %10, align 8
  %38 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %37, i32 0, i32 0
  %39 = call i32 @spin_lock_bh(i32* %38)
  %40 = load %struct.skge_hw*, %struct.skge_hw** %10, align 8
  %41 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @CHIP_ID_GENESIS, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %36
  %46 = load %struct.skge_hw*, %struct.skge_hw** %10, align 8
  %47 = load %struct.skge_port*, %struct.skge_port** %9, align 8
  %48 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %51 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 31
  %54 = call i32 @__xm_phy_read(%struct.skge_hw* %46, i32 %49, i32 %53, i32* %12)
  store i32 %54, i32* %11, align 4
  br label %65

55:                                               ; preds = %36
  %56 = load %struct.skge_hw*, %struct.skge_hw** %10, align 8
  %57 = load %struct.skge_port*, %struct.skge_port** %9, align 8
  %58 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %61 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, 31
  %64 = call i32 @__gm_phy_read(%struct.skge_hw* %56, i32 %59, i32 %63, i32* %12)
  store i32 %64, i32* %11, align 4
  br label %65

65:                                               ; preds = %55, %45
  %66 = load %struct.skge_hw*, %struct.skge_hw** %10, align 8
  %67 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %66, i32 0, i32 0
  %68 = call i32 @spin_unlock_bh(i32* %67)
  %69 = load i32, i32* %12, align 4
  %70 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %71 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  br label %111

72:                                               ; preds = %28
  %73 = load %struct.skge_hw*, %struct.skge_hw** %10, align 8
  %74 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %73, i32 0, i32 0
  %75 = call i32 @spin_lock_bh(i32* %74)
  %76 = load %struct.skge_hw*, %struct.skge_hw** %10, align 8
  %77 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @CHIP_ID_GENESIS, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %94

81:                                               ; preds = %72
  %82 = load %struct.skge_hw*, %struct.skge_hw** %10, align 8
  %83 = load %struct.skge_port*, %struct.skge_port** %9, align 8
  %84 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %87 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, 31
  %90 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %91 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @xm_phy_write(%struct.skge_hw* %82, i32 %85, i32 %89, i32 %92)
  store i32 %93, i32* %11, align 4
  br label %107

94:                                               ; preds = %72
  %95 = load %struct.skge_hw*, %struct.skge_hw** %10, align 8
  %96 = load %struct.skge_port*, %struct.skge_port** %9, align 8
  %97 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %100 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, 31
  %103 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %104 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @gm_phy_write(%struct.skge_hw* %95, i32 %98, i32 %102, i32 %105)
  store i32 %106, i32* %11, align 4
  br label %107

107:                                              ; preds = %94, %81
  %108 = load %struct.skge_hw*, %struct.skge_hw** %10, align 8
  %109 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %108, i32 0, i32 0
  %110 = call i32 @spin_unlock_bh(i32* %109)
  br label %111

111:                                              ; preds = %28, %107, %65
  %112 = load i32, i32* %11, align 4
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %111, %25
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local %struct.mii_ioctl_data* @if_mii(%struct.ifreq*) #1

declare dso_local %struct.skge_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @__xm_phy_read(%struct.skge_hw*, i32, i32, i32*) #1

declare dso_local i32 @__gm_phy_read(%struct.skge_hw*, i32, i32, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @xm_phy_write(%struct.skge_hw*, i32, i32, i32) #1

declare dso_local i32 @gm_phy_write(%struct.skge_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
