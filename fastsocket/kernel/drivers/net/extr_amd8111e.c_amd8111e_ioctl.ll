; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_amd8111e.c_amd8111e_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_amd8111e.c_amd8111e_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.mii_ioctl_data = type { i32, i32, i32, i32 }
%struct.amd8111e_priv = type { i32, i32 }

@PHY_REG_ADDR_MASK = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @amd8111e_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd8111e_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mii_ioctl_data*, align 8
  %9 = alloca %struct.amd8111e_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %13 = call %struct.mii_ioctl_data* @if_mii(%struct.ifreq* %12)
  store %struct.mii_ioctl_data* %13, %struct.mii_ioctl_data** %8, align 8
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call %struct.amd8111e_priv* @netdev_priv(%struct.net_device* %14)
  store %struct.amd8111e_priv* %15, %struct.amd8111e_priv** %9, align 8
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %65 [
    i32 130, label %17
    i32 129, label %23
    i32 128, label %44
  ]

17:                                               ; preds = %3
  %18 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %9, align 8
  %19 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %22 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  br label %23

23:                                               ; preds = %3, %17
  %24 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %9, align 8
  %25 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %24, i32 0, i32 0
  %26 = call i32 @spin_lock_irq(i32* %25)
  %27 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %9, align 8
  %28 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %29 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %32 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @PHY_REG_ADDR_MASK, align 4
  %35 = and i32 %33, %34
  %36 = call i32 @amd8111e_read_phy(%struct.amd8111e_priv* %27, i32 %30, i32 %35, i32* %11)
  store i32 %36, i32* %10, align 4
  %37 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %9, align 8
  %38 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %37, i32 0, i32 0
  %39 = call i32 @spin_unlock_irq(i32* %38)
  %40 = load i32, i32* %11, align 4
  %41 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %42 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %4, align 4
  br label %69

44:                                               ; preds = %3
  %45 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %9, align 8
  %46 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %45, i32 0, i32 0
  %47 = call i32 @spin_lock_irq(i32* %46)
  %48 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %9, align 8
  %49 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %50 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %53 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @PHY_REG_ADDR_MASK, align 4
  %56 = and i32 %54, %55
  %57 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %58 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @amd8111e_write_phy(%struct.amd8111e_priv* %48, i32 %51, i32 %56, i32 %59)
  store i32 %60, i32* %10, align 4
  %61 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %9, align 8
  %62 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %61, i32 0, i32 0
  %63 = call i32 @spin_unlock_irq(i32* %62)
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %4, align 4
  br label %69

65:                                               ; preds = %3
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* @EOPNOTSUPP, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %66, %44, %23
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local %struct.mii_ioctl_data* @if_mii(%struct.ifreq*) #1

declare dso_local %struct.amd8111e_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @amd8111e_read_phy(%struct.amd8111e_priv*, i32, i32, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @amd8111e_write_phy(%struct.amd8111e_priv*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
