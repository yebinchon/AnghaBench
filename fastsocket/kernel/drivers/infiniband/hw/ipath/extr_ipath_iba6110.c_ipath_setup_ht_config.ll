; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_iba6110.c_ipath_setup_ht_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_iba6110.c_ipath_setup_ht_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_devdata = type { i32, i32 }
%struct.pci_dev = type { i32 }

@ipath_ht_irq_update = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Couldn't create interrupt handler: err %d\0A\00", align 1
@PCI_CAP_ID_HT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"Couldn't find HyperTransport capability; no interrupts\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Couldn't read config command @ %d\0A\00", align 1
@IPATH_SWAP_PIOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipath_devdata*, %struct.pci_dev*)* @ipath_setup_ht_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipath_setup_ht_config(%struct.ipath_devdata* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca %struct.ipath_devdata*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ipath_devdata* %0, %struct.ipath_devdata** %3, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %4, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = load i32, i32* @ipath_ht_irq_update, align 4
  %10 = call i32 @__ht_create_irq(%struct.pci_dev* %8, i32 0, i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 (%struct.ipath_devdata*, i8*, ...) @ipath_dev_err(%struct.ipath_devdata* %14, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %66

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %20 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  store i32 0, i32* %6, align 4
  %21 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %22 = load i32, i32* @PCI_CAP_ID_HT, align 4
  %23 = call i32 @pci_find_capability(%struct.pci_dev* %21, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %17
  %27 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %28 = call i32 (%struct.ipath_devdata*, i8*, ...) @ipath_dev_err(%struct.ipath_devdata* %27, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %66

31:                                               ; preds = %17
  br label %32

32:                                               ; preds = %54, %31
  %33 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 3
  %36 = call i64 @pci_read_config_byte(%struct.pci_dev* %33, i32 %35, i32* %7)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %40 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %39, i32 0, i32 0
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @dev_info(i32* %40, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  br label %54

43:                                               ; preds = %32
  %44 = load i32, i32* %7, align 4
  %45 = and i32 %44, 224
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %43
  %48 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %49 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @slave_or_pri_blk(%struct.ipath_devdata* %48, %struct.pci_dev* %49, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %47, %43
  br label %54

54:                                               ; preds = %53, %38
  %55 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @PCI_CAP_ID_HT, align 4
  %58 = call i32 @pci_find_next_capability(%struct.pci_dev* %55, i32 %56, i32 %57)
  store i32 %58, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %32, label %60

60:                                               ; preds = %54
  %61 = load i32, i32* @IPATH_SWAP_PIOBUFS, align 4
  %62 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %63 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %60, %26, %13
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local i32 @__ht_create_irq(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @ipath_dev_err(%struct.ipath_devdata*, i8*, ...) #1

declare dso_local i32 @pci_find_capability(%struct.pci_dev*, i32) #1

declare dso_local i64 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @slave_or_pri_blk(%struct.ipath_devdata*, %struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_find_next_capability(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
