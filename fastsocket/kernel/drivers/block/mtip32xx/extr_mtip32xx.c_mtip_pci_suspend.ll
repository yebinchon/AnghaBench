; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_pci_suspend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_pci_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.driver_data = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"Driver private datastructure is NULL\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@MTIP_DDF_RESUME_BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to suspend controller\0A\00", align 1
@PCI_D3hot = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32)* @mtip_pci_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtip_pci_suspend(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.driver_data*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = call %struct.driver_data* @pci_get_drvdata(%struct.pci_dev* %8)
  store %struct.driver_data* %9, %struct.driver_data** %7, align 8
  %10 = load %struct.driver_data*, %struct.driver_data** %7, align 8
  %11 = icmp ne %struct.driver_data* %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 0
  %15 = call i32 @dev_err(i32* %14, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EFAULT, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %41

18:                                               ; preds = %2
  %19 = load i32, i32* @MTIP_DDF_RESUME_BIT, align 4
  %20 = load %struct.driver_data*, %struct.driver_data** %7, align 8
  %21 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %20, i32 0, i32 0
  %22 = call i32 @set_bit(i32 %19, i32* %21)
  %23 = load %struct.driver_data*, %struct.driver_data** %7, align 8
  %24 = call i32 @mtip_block_suspend(%struct.driver_data* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %18
  %28 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %29 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %28, i32 0, i32 0
  %30 = call i32 @dev_err(i32* %29, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %3, align 4
  br label %41

32:                                               ; preds = %18
  %33 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %34 = call i32 @pci_save_state(%struct.pci_dev* %33)
  %35 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %36 = call i32 @pci_disable_device(%struct.pci_dev* %35)
  %37 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %38 = load i32, i32* @PCI_D3hot, align 4
  %39 = call i32 @pci_set_power_state(%struct.pci_dev* %37, i32 %38)
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %32, %27, %12
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.driver_data* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @mtip_block_suspend(%struct.driver_data*) #1

declare dso_local i32 @pci_save_state(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_power_state(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
