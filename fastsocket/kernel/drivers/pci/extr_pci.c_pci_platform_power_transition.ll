; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_pci.c_pci_platform_power_transition.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_pci.c_pci_platform_power_transition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i8*, i32 }

@PCI_D0 = common dso_local global i8* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32)* @pci_platform_power_transition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_platform_power_transition(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %7 = call i64 @platform_pci_power_manageable(%struct.pci_dev* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %29

9:                                                ; preds = %2
  %10 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @platform_pci_set_power_state(%struct.pci_dev* %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %9
  %16 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @pci_update_current_state(%struct.pci_dev* %16, i32 %17)
  br label %19

19:                                               ; preds = %15, %9
  %20 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = load i8*, i8** @PCI_D0, align 8
  %26 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %27 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  br label %28

28:                                               ; preds = %24, %19
  br label %41

29:                                               ; preds = %2
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  %32 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %33 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %29
  %37 = load i8*, i8** @PCI_D0, align 8
  %38 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %39 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  br label %40

40:                                               ; preds = %36, %29
  br label %41

41:                                               ; preds = %40, %28
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i64 @platform_pci_power_manageable(%struct.pci_dev*) #1

declare dso_local i32 @platform_pci_set_power_state(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_update_current_state(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
