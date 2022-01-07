; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_pci.c_pci_disable_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_pci.c_pci_disable_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64, i32 }
%struct.pci_devres = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_disable_device(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.pci_devres*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call %struct.pci_devres* @find_pci_dr(%struct.pci_dev* %4)
  store %struct.pci_devres* %5, %struct.pci_devres** %3, align 8
  %6 = load %struct.pci_devres*, %struct.pci_devres** %3, align 8
  %7 = icmp ne %struct.pci_devres* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.pci_devres*, %struct.pci_devres** %3, align 8
  %10 = getelementptr inbounds %struct.pci_devres, %struct.pci_devres* %9, i32 0, i32 0
  store i64 0, i64* %10, align 8
  br label %11

11:                                               ; preds = %8, %1
  %12 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 1
  %14 = call i64 @atomic_sub_return(i32 1, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %22

17:                                               ; preds = %11
  %18 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %19 = call i32 @do_pci_disable_device(%struct.pci_dev* %18)
  %20 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  br label %22

22:                                               ; preds = %17, %16
  ret void
}

declare dso_local %struct.pci_devres* @find_pci_dr(%struct.pci_dev*) #1

declare dso_local i64 @atomic_sub_return(i32, i32*) #1

declare dso_local i32 @do_pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
