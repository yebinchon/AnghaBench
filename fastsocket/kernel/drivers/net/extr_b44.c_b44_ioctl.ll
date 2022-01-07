; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_b44.c_b44_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_b44.c_b44_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.mii_ioctl_data = type { i32 }
%struct.b44 = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @b44_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b44_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ifreq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mii_ioctl_data*, align 8
  %8 = alloca %struct.b44*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ifreq* %1, %struct.ifreq** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %11 = call %struct.mii_ioctl_data* @if_mii(%struct.ifreq* %10)
  store %struct.mii_ioctl_data* %11, %struct.mii_ioctl_data** %7, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.b44* @netdev_priv(%struct.net_device* %12)
  store %struct.b44* %13, %struct.b44** %8, align 8
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %9, align 4
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = call i32 @netif_running(%struct.net_device* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  br label %32

20:                                               ; preds = %3
  %21 = load %struct.b44*, %struct.b44** %8, align 8
  %22 = getelementptr inbounds %struct.b44, %struct.b44* %21, i32 0, i32 0
  %23 = call i32 @spin_lock_irq(i32* %22)
  %24 = load %struct.b44*, %struct.b44** %8, align 8
  %25 = getelementptr inbounds %struct.b44, %struct.b44* %24, i32 0, i32 1
  %26 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %7, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @generic_mii_ioctl(i32* %25, %struct.mii_ioctl_data* %26, i32 %27, i32* null)
  store i32 %28, i32* %9, align 4
  %29 = load %struct.b44*, %struct.b44** %8, align 8
  %30 = getelementptr inbounds %struct.b44, %struct.b44* %29, i32 0, i32 0
  %31 = call i32 @spin_unlock_irq(i32* %30)
  br label %32

32:                                               ; preds = %20, %19
  %33 = load i32, i32* %9, align 4
  ret i32 %33
}

declare dso_local %struct.mii_ioctl_data* @if_mii(%struct.ifreq*) #1

declare dso_local %struct.b44* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @generic_mii_ioctl(i32*, %struct.mii_ioctl_data*, i32, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
