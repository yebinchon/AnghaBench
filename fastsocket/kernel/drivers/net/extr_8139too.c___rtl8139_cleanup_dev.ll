; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_8139too.c___rtl8139_cleanup_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_8139too.c___rtl8139_cleanup_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rtl8139_private = type { i64, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @__rtl8139_cleanup_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__rtl8139_cleanup_dev(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.rtl8139_private*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.rtl8139_private* @netdev_priv(%struct.net_device* %5)
  store %struct.rtl8139_private* %6, %struct.rtl8139_private** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = icmp ne %struct.net_device* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.rtl8139_private*, %struct.rtl8139_private** %3, align 8
  %12 = getelementptr inbounds %struct.rtl8139_private, %struct.rtl8139_private* %11, i32 0, i32 1
  %13 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %14 = icmp ne %struct.pci_dev* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.rtl8139_private*, %struct.rtl8139_private** %3, align 8
  %18 = getelementptr inbounds %struct.rtl8139_private, %struct.rtl8139_private* %17, i32 0, i32 1
  %19 = load %struct.pci_dev*, %struct.pci_dev** %18, align 8
  store %struct.pci_dev* %19, %struct.pci_dev** %4, align 8
  %20 = load %struct.rtl8139_private*, %struct.rtl8139_private** %3, align 8
  %21 = getelementptr inbounds %struct.rtl8139_private, %struct.rtl8139_private* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  %25 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %26 = load %struct.rtl8139_private*, %struct.rtl8139_private** %3, align 8
  %27 = getelementptr inbounds %struct.rtl8139_private, %struct.rtl8139_private* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @pci_iounmap(%struct.pci_dev* %25, i64 %28)
  br label %30

30:                                               ; preds = %24, %1
  %31 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %32 = call i32 @pci_release_regions(%struct.pci_dev* %31)
  %33 = load %struct.net_device*, %struct.net_device** %2, align 8
  %34 = call i32 @free_netdev(%struct.net_device* %33)
  %35 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %36 = call i32 @pci_set_drvdata(%struct.pci_dev* %35, i32* null)
  ret void
}

declare dso_local %struct.rtl8139_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pci_iounmap(%struct.pci_dev*, i64) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
