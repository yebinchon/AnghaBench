; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.bnx2x = type { i32 }
%struct.mii_ioctl_data = type { i32, i32, i32 }

@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"ioctl: phy id 0x%x, reg 0x%x, val_in 0x%x\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @bnx2x_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bnx2x*, align 8
  %9 = alloca %struct.mii_ioctl_data*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.bnx2x* @netdev_priv(%struct.net_device* %10)
  store %struct.bnx2x* %11, %struct.bnx2x** %8, align 8
  %12 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %13 = call %struct.mii_ioctl_data* @if_mii(%struct.ifreq* %12)
  store %struct.mii_ioctl_data* %13, %struct.mii_ioctl_data** %9, align 8
  %14 = load i32, i32* @NETIF_MSG_LINK, align 4
  %15 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %16 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %19 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %22 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @DP(i32 %14, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %20, i32 %23)
  %25 = load %struct.net_device*, %struct.net_device** %5, align 8
  %26 = call i32 @netif_running(%struct.net_device* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* @EAGAIN, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %37

31:                                               ; preds = %3
  %32 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %33 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %32, i32 0, i32 0
  %34 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @mdio_mii_ioctl(i32* %33, %struct.mii_ioctl_data* %34, i32 %35)
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %31, %28
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local %struct.bnx2x* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.mii_ioctl_data* @if_mii(%struct.ifreq*) #1

declare dso_local i32 @DP(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @mdio_mii_ioctl(i32*, %struct.mii_ioctl_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
