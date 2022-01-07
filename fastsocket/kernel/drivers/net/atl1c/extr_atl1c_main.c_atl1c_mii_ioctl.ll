; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atl1c/extr_atl1c_main.c_atl1c_mii_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/atl1c/extr_atl1c_main.c_atl1c_mii_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.atl1c_adapter = type { i32, i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.mii_ioctl_data = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"<atl1c_mii_ioctl> write %x %x\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @atl1c_mii_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl1c_mii_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.atl1c_adapter*, align 8
  %9 = alloca %struct.pci_dev*, align 8
  %10 = alloca %struct.mii_ioctl_data*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.atl1c_adapter* @netdev_priv(%struct.net_device* %13)
  store %struct.atl1c_adapter* %14, %struct.atl1c_adapter** %8, align 8
  %15 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %8, align 8
  %16 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %15, i32 0, i32 2
  %17 = load %struct.pci_dev*, %struct.pci_dev** %16, align 8
  store %struct.pci_dev* %17, %struct.pci_dev** %9, align 8
  %18 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %19 = call %struct.mii_ioctl_data* @if_mii(%struct.ifreq* %18)
  store %struct.mii_ioctl_data* %19, %struct.mii_ioctl_data** %10, align 8
  store i32 0, i32* %12, align 4
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = call i32 @netif_running(%struct.net_device* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %93

26:                                               ; preds = %3
  %27 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %8, align 8
  %28 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %27, i32 0, i32 0
  %29 = load i64, i64* %11, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load i32, i32* %7, align 4
  switch i32 %31, label %83 [
    i32 130, label %32
    i32 129, label %35
    i32 128, label %50
  ]

32:                                               ; preds = %26
  %33 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %10, align 8
  %34 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %33, i32 0, i32 3
  store i32 0, i32* %34, align 4
  br label %86

35:                                               ; preds = %26
  %36 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %8, align 8
  %37 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %36, i32 0, i32 1
  %38 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %10, align 8
  %39 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 31
  %42 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %10, align 8
  %43 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %42, i32 0, i32 2
  %44 = call i32 @atl1c_read_phy_reg(i32* %37, i32 %41, i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %35
  %47 = load i32, i32* @EIO, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %12, align 4
  br label %87

49:                                               ; preds = %35
  br label %86

50:                                               ; preds = %26
  %51 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %10, align 8
  %52 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, -32
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i32, i32* @EFAULT, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %12, align 4
  br label %87

59:                                               ; preds = %50
  %60 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %61 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %60, i32 0, i32 0
  %62 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %10, align 8
  %63 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %10, align 8
  %66 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @dev_dbg(i32* %61, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %67)
  %69 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %8, align 8
  %70 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %69, i32 0, i32 1
  %71 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %10, align 8
  %72 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %10, align 8
  %75 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @atl1c_write_phy_reg(i32* %70, i32 %73, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %59
  %80 = load i32, i32* @EIO, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %12, align 4
  br label %87

82:                                               ; preds = %59
  br label %86

83:                                               ; preds = %26
  %84 = load i32, i32* @EOPNOTSUPP, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %12, align 4
  br label %86

86:                                               ; preds = %83, %82, %49, %32
  br label %87

87:                                               ; preds = %86, %79, %56, %46
  %88 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %8, align 8
  %89 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %88, i32 0, i32 0
  %90 = load i64, i64* %11, align 8
  %91 = call i32 @spin_unlock_irqrestore(i32* %89, i64 %90)
  %92 = load i32, i32* %12, align 4
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %87, %23
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local %struct.atl1c_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.mii_ioctl_data* @if_mii(%struct.ifreq*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @atl1c_read_phy_reg(i32*, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @atl1c_write_phy_reg(i32*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
