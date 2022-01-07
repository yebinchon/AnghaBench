; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pci-skeleton.c_netdrv_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pci-skeleton.c_netdrv_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.netdrv_private = type { i32*, i32 }
%struct.mii_ioctl_data = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"ENTER\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"EXIT, returning %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @netdrv_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netdrv_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ifreq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.netdrv_private*, align 8
  %8 = alloca %struct.mii_ioctl_data*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ifreq* %1, %struct.ifreq** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.netdrv_private* @netdev_priv(%struct.net_device* %11)
  store %struct.netdrv_private* %12, %struct.netdrv_private** %7, align 8
  %13 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %14 = call %struct.mii_ioctl_data* @if_mii(%struct.ifreq* %13)
  store %struct.mii_ioctl_data* %14, %struct.mii_ioctl_data** %8, align 8
  store i32 0, i32* %10, align 4
  %15 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %69 [
    i32 130, label %17
    i32 129, label %26
    i32 128, label %47
  ]

17:                                               ; preds = %3
  %18 = load %struct.netdrv_private*, %struct.netdrv_private** %7, align 8
  %19 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 63
  %24 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %25 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  br label %26

26:                                               ; preds = %3, %17
  %27 = load %struct.netdrv_private*, %struct.netdrv_private** %7, align 8
  %28 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %27, i32 0, i32 1
  %29 = load i64, i64* %9, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load %struct.net_device*, %struct.net_device** %4, align 8
  %32 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %33 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 31
  %36 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %37 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 31
  %40 = call i32 @mdio_read(%struct.net_device* %31, i32 %35, i32 %39)
  %41 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %42 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load %struct.netdrv_private*, %struct.netdrv_private** %7, align 8
  %44 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %43, i32 0, i32 1
  %45 = load i64, i64* %9, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  br label %72

47:                                               ; preds = %3
  %48 = load %struct.netdrv_private*, %struct.netdrv_private** %7, align 8
  %49 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %48, i32 0, i32 1
  %50 = load i64, i64* %9, align 8
  %51 = call i32 @spin_lock_irqsave(i32* %49, i64 %50)
  %52 = load %struct.net_device*, %struct.net_device** %4, align 8
  %53 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %54 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 31
  %57 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %58 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 31
  %61 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %62 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @mdio_write(%struct.net_device* %52, i32 %56, i32 %60, i32 %63)
  %65 = load %struct.netdrv_private*, %struct.netdrv_private** %7, align 8
  %66 = getelementptr inbounds %struct.netdrv_private, %struct.netdrv_private* %65, i32 0, i32 1
  %67 = load i64, i64* %9, align 8
  %68 = call i32 @spin_unlock_irqrestore(i32* %66, i64 %67)
  br label %72

69:                                               ; preds = %3
  %70 = load i32, i32* @EOPNOTSUPP, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %69, %47, %26
  %73 = load i32, i32* %10, align 4
  %74 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %10, align 4
  ret i32 %75
}

declare dso_local %struct.netdrv_private* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.mii_ioctl_data* @if_mii(%struct.ifreq*) #1

declare dso_local i32 @DPRINTK(i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mdio_read(%struct.net_device*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mdio_write(%struct.net_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
