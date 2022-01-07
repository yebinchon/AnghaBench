; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sunhme.c_hme_get_drvinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sunhme.c_hme_get_drvinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_drvinfo = type { i32, i32, i32 }
%struct.happy_meal = type { i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"sunhme\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"2.02\00", align 1
@HFLAG_PCI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_drvinfo*)* @hme_get_drvinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hme_get_drvinfo(%struct.net_device* %0, %struct.ethtool_drvinfo* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_drvinfo*, align 8
  %5 = alloca %struct.happy_meal*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_drvinfo* %1, %struct.ethtool_drvinfo** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.happy_meal* @netdev_priv(%struct.net_device* %7)
  store %struct.happy_meal* %8, %struct.happy_meal** %5, align 8
  %9 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %10 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @strcpy(i32 %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %14 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @strcpy(i32 %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %17 = load %struct.happy_meal*, %struct.happy_meal** %5, align 8
  %18 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @HFLAG_PCI, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %2
  %24 = load %struct.happy_meal*, %struct.happy_meal** %5, align 8
  %25 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %24, i32 0, i32 1
  %26 = load %struct.pci_dev*, %struct.pci_dev** %25, align 8
  store %struct.pci_dev* %26, %struct.pci_dev** %6, align 8
  %27 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %28 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %31 = call i8* @pci_name(%struct.pci_dev* %30)
  %32 = call i32 @strcpy(i32 %29, i8* %31)
  br label %33

33:                                               ; preds = %23, %2
  ret void
}

declare dso_local %struct.happy_meal* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i8* @pci_name(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
