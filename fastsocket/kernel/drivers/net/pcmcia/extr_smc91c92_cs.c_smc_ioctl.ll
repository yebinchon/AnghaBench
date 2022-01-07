; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_smc91c92_cs.c_smc_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_smc91c92_cs.c_smc_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.smc_private = type { i32, i32 }
%struct.mii_ioctl_data = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@BANK_SELECT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @smc_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.smc_private*, align 8
  %9 = alloca %struct.mii_ioctl_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.smc_private* @netdev_priv(%struct.net_device* %13)
  store %struct.smc_private* %14, %struct.smc_private** %8, align 8
  %15 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %16 = call %struct.mii_ioctl_data* @if_mii(%struct.ifreq* %15)
  store %struct.mii_ioctl_data* %16, %struct.mii_ioctl_data** %9, align 8
  store i32 0, i32* %10, align 4
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %12, align 4
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = call i32 @netif_running(%struct.net_device* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %47

26:                                               ; preds = %3
  %27 = load %struct.smc_private*, %struct.smc_private** %8, align 8
  %28 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %27, i32 0, i32 0
  %29 = call i32 @spin_lock_irq(i32* %28)
  %30 = load i32, i32* %12, align 4
  %31 = zext i32 %30 to i64
  %32 = load i64, i64* @BANK_SELECT, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @inw(i64 %33)
  store i32 %34, i32* %11, align 4
  %35 = call i32 @SMC_SELECT_BANK(i32 3)
  %36 = load %struct.smc_private*, %struct.smc_private** %8, align 8
  %37 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %36, i32 0, i32 1
  %38 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @generic_mii_ioctl(i32* %37, %struct.mii_ioctl_data* %38, i32 %39, i32* null)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @SMC_SELECT_BANK(i32 %41)
  %43 = load %struct.smc_private*, %struct.smc_private** %8, align 8
  %44 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %43, i32 0, i32 0
  %45 = call i32 @spin_unlock_irq(i32* %44)
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %26, %23
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local %struct.smc_private* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.mii_ioctl_data* @if_mii(%struct.ifreq*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @SMC_SELECT_BANK(i32) #1

declare dso_local i32 @generic_mii_ioctl(i32*, %struct.mii_ioctl_data*, i32, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
