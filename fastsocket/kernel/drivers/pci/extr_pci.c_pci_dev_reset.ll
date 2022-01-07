; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_pci.c_pci_dev_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/extr_pci.c_pci_dev_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32)* @pci_dev_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_dev_reset(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 (...) @might_sleep()
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %2
  %10 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %11 = call i32 @pci_cfg_access_lock(%struct.pci_dev* %10)
  %12 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = call i32 @down(i32* %14)
  br label %16

16:                                               ; preds = %9, %2
  %17 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @pci_dev_specific_reset(%struct.pci_dev* %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @ENOTTY, align 4
  %22 = sub nsw i32 0, %21
  %23 = icmp ne i32 %20, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %56

25:                                               ; preds = %16
  %26 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @pcie_flr(%struct.pci_dev* %26, i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @ENOTTY, align 4
  %31 = sub nsw i32 0, %30
  %32 = icmp ne i32 %29, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %56

34:                                               ; preds = %25
  %35 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @pci_af_flr(%struct.pci_dev* %35, i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @ENOTTY, align 4
  %40 = sub nsw i32 0, %39
  %41 = icmp ne i32 %38, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %56

43:                                               ; preds = %34
  %44 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @pci_pm_reset(%struct.pci_dev* %44, i32 %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @ENOTTY, align 4
  %49 = sub nsw i32 0, %48
  %50 = icmp ne i32 %47, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  br label %56

52:                                               ; preds = %43
  %53 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @pci_parent_bus_reset(%struct.pci_dev* %53, i32 %54)
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %52, %51, %42, %33, %24
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %56
  %60 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %61 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = call i32 @up(i32* %62)
  %64 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %65 = call i32 @pci_cfg_access_unlock(%struct.pci_dev* %64)
  br label %66

66:                                               ; preds = %59, %56
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @pci_cfg_access_lock(%struct.pci_dev*) #1

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @pci_dev_specific_reset(%struct.pci_dev*, i32) #1

declare dso_local i32 @pcie_flr(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_af_flr(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_pm_reset(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_parent_bus_reset(%struct.pci_dev*, i32) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i32 @pci_cfg_access_unlock(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
