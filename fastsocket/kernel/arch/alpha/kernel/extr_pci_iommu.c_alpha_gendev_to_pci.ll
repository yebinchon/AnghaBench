; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_pci_iommu.c_alpha_gendev_to_pci.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_pci_iommu.c_alpha_gendev_to_pci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64 }
%struct.device = type { i64*, i32* }

@pci_bus_type = common dso_local global i32 0, align 4
@isa_bridge = common dso_local global %struct.pci_dev* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pci_dev* @alpha_gendev_to_pci(%struct.device* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.device*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %4 = load %struct.device*, %struct.device** %3, align 8
  %5 = icmp ne %struct.device* %4, null
  br i1 %5, label %6, label %14

6:                                                ; preds = %1
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, @pci_bus_type
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = load %struct.device*, %struct.device** %3, align 8
  %13 = call %struct.pci_dev* @to_pci_dev(%struct.device* %12)
  store %struct.pci_dev* %13, %struct.pci_dev** %2, align 8
  br label %47

14:                                               ; preds = %6, %1
  %15 = load %struct.pci_dev*, %struct.pci_dev** @isa_bridge, align 8
  %16 = icmp ne %struct.pci_dev* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.device*, %struct.device** %3, align 8
  %21 = icmp ne %struct.device* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %14
  %23 = load %struct.device*, %struct.device** %3, align 8
  %24 = getelementptr inbounds %struct.device, %struct.device* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = icmp ne i64* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.device*, %struct.device** %3, align 8
  %29 = getelementptr inbounds %struct.device, %struct.device* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %27, %22, %14
  %34 = load %struct.pci_dev*, %struct.pci_dev** @isa_bridge, align 8
  store %struct.pci_dev* %34, %struct.pci_dev** %2, align 8
  br label %47

35:                                               ; preds = %27
  %36 = load %struct.device*, %struct.device** %3, align 8
  %37 = getelementptr inbounds %struct.device, %struct.device* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.pci_dev*, %struct.pci_dev** @isa_bridge, align 8
  %41 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sge i64 %39, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = load %struct.pci_dev*, %struct.pci_dev** @isa_bridge, align 8
  store %struct.pci_dev* %45, %struct.pci_dev** %2, align 8
  br label %47

46:                                               ; preds = %35
  store %struct.pci_dev* null, %struct.pci_dev** %2, align 8
  br label %47

47:                                               ; preds = %46, %44, %33, %11
  %48 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  ret %struct.pci_dev* %48
}

declare dso_local %struct.pci_dev* @to_pci_dev(%struct.device*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
