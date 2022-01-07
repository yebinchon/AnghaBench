; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_epic100.c_netdev_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_epic100.c_netdev_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.ifreq = type { i32 }
%struct.epic_private = type { i32, i32 }
%struct.mii_ioctl_data = type { i32 }

@GENCTL = common dso_local global i64 0, align 8
@NVCTL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @netdev_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netdev_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ifreq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.epic_private*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.mii_ioctl_data*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ifreq* %1, %struct.ifreq** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.epic_private* @netdev_priv(%struct.net_device* %11)
  store %struct.epic_private* %12, %struct.epic_private** %7, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %8, align 8
  %16 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %17 = call %struct.mii_ioctl_data* @if_mii(%struct.ifreq* %16)
  store %struct.mii_ioctl_data* %17, %struct.mii_ioctl_data** %9, align 8
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = call i32 @netif_running(%struct.net_device* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %36, label %21

21:                                               ; preds = %3
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* @GENCTL, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @outl(i32 512, i64 %24)
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* @NVCTL, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @inl(i64 %28)
  %30 = and i32 %29, -61
  %31 = or i32 %30, 18432
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* @NVCTL, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @outl(i32 %31, i64 %34)
  br label %36

36:                                               ; preds = %21, %3
  %37 = load %struct.epic_private*, %struct.epic_private** %7, align 8
  %38 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %37, i32 0, i32 0
  %39 = call i32 @spin_lock_irq(i32* %38)
  %40 = load %struct.epic_private*, %struct.epic_private** %7, align 8
  %41 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %40, i32 0, i32 1
  %42 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @generic_mii_ioctl(i32* %41, %struct.mii_ioctl_data* %42, i32 %43, i32* null)
  store i32 %44, i32* %10, align 4
  %45 = load %struct.epic_private*, %struct.epic_private** %7, align 8
  %46 = getelementptr inbounds %struct.epic_private, %struct.epic_private* %45, i32 0, i32 0
  %47 = call i32 @spin_unlock_irq(i32* %46)
  %48 = load %struct.net_device*, %struct.net_device** %4, align 8
  %49 = call i32 @netif_running(%struct.net_device* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %65, label %51

51:                                               ; preds = %36
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* @GENCTL, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @outl(i32 8, i64 %54)
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* @NVCTL, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @inl(i64 %58)
  %60 = and i32 %59, -18493
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* @NVCTL, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @outl(i32 %60, i64 %63)
  br label %65

65:                                               ; preds = %51, %36
  %66 = load i32, i32* %10, align 4
  ret i32 %66
}

declare dso_local %struct.epic_private* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.mii_ioctl_data* @if_mii(%struct.ifreq*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @generic_mii_ioctl(i32*, %struct.mii_ioctl_data*, i32, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
