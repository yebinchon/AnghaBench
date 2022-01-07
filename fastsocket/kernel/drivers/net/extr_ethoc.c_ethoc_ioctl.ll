; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ethoc.c_ethoc_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ethoc.c_ethoc_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.ethoc = type { %struct.phy_device*, %struct.TYPE_2__* }
%struct.phy_device = type { i32 }
%struct.TYPE_2__ = type { %struct.phy_device** }
%struct.mii_ioctl_data = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@SIOCGMIIPHY = common dso_local global i32 0, align 4
@PHY_MAX_ADDR = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @ethoc_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ethoc_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ethoc*, align 8
  %9 = alloca %struct.mii_ioctl_data*, align 8
  %10 = alloca %struct.phy_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.ethoc* @netdev_priv(%struct.net_device* %11)
  store %struct.ethoc* %12, %struct.ethoc** %8, align 8
  %13 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %14 = call %struct.mii_ioctl_data* @if_mii(%struct.ifreq* %13)
  store %struct.mii_ioctl_data* %14, %struct.mii_ioctl_data** %9, align 8
  store %struct.phy_device* null, %struct.phy_device** %10, align 8
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = call i32 @netif_running(%struct.net_device* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %60

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @SIOCGMIIPHY, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %51

25:                                               ; preds = %21
  %26 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %27 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PHY_MAX_ADDR, align 8
  %30 = icmp uge i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @ERANGE, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %60

34:                                               ; preds = %25
  %35 = load %struct.ethoc*, %struct.ethoc** %8, align 8
  %36 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load %struct.phy_device**, %struct.phy_device*** %38, align 8
  %40 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %41 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.phy_device*, %struct.phy_device** %39, i64 %42
  %44 = load %struct.phy_device*, %struct.phy_device** %43, align 8
  store %struct.phy_device* %44, %struct.phy_device** %10, align 8
  %45 = load %struct.phy_device*, %struct.phy_device** %10, align 8
  %46 = icmp ne %struct.phy_device* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %34
  %48 = load i32, i32* @ENODEV, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %60

50:                                               ; preds = %34
  br label %55

51:                                               ; preds = %21
  %52 = load %struct.ethoc*, %struct.ethoc** %8, align 8
  %53 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %52, i32 0, i32 0
  %54 = load %struct.phy_device*, %struct.phy_device** %53, align 8
  store %struct.phy_device* %54, %struct.phy_device** %10, align 8
  br label %55

55:                                               ; preds = %51, %50
  %56 = load %struct.phy_device*, %struct.phy_device** %10, align 8
  %57 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @phy_mii_ioctl(%struct.phy_device* %56, %struct.mii_ioctl_data* %57, i32 %58)
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %55, %47, %31, %18
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local %struct.ethoc* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.mii_ioctl_data* @if_mii(%struct.ifreq*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @phy_mii_ioctl(%struct.phy_device*, %struct.mii_ioctl_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
