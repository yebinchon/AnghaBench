; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_cpcihp_zt5550.c_zt5550_hc_init_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_cpcihp_zt5550.c_zt5550_hc_init_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_13__*, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"returned from zt5550_hc_config\00", align 1
@zt5550_hpc = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@zt5550_hc_query_enum = common dso_local global i32 0, align 4
@zt5550_hpc_ops = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@poll = common dso_local global i32 0, align 4
@hc_dev = common dso_local global %struct.TYPE_13__* null, align 8
@IRQF_SHARED = common dso_local global i32 0, align 4
@zt5550_hc_enable_irq = common dso_local global i32 0, align 4
@zt5550_hc_disable_irq = common dso_local global i32 0, align 4
@zt5550_hc_check_irq = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"using ENUM# polling mode\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"could not register cPCI hotplug controller\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"registered controller\00", align 1
@PCI_VENDOR_ID_DEC = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_DEC_21154 = common dso_local global i32 0, align 4
@bus0_dev = common dso_local global %struct.TYPE_12__* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@bus0 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"could not register cPCI hotplug bus\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"registered bus\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"could not started cPCI hotplug system\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"started cpci hp system\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"status = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @zt5550_hc_init_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zt5550_hc_init_one(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %8 = call i32 @zt5550_hc_config(%struct.pci_dev* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %3, align 4
  br label %75

13:                                               ; preds = %2
  %14 = call i32 @dbg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @memset(%struct.TYPE_11__* @zt5550_hpc, i32 0, i32 4)
  %16 = load i32, i32* @zt5550_hc_query_enum, align 4
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @zt5550_hpc_ops, i32 0, i32 3), align 4
  store %struct.TYPE_10__* @zt5550_hpc_ops, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @zt5550_hpc, i32 0, i32 3), align 8
  %17 = load i32, i32* @poll, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %13
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** @hc_dev, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @zt5550_hpc, i32 0, i32 2), align 4
  %23 = load i32, i32* @IRQF_SHARED, align 4
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @zt5550_hpc, i32 0, i32 1), align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** @hc_dev, align 8
  store %struct.TYPE_13__* %24, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @zt5550_hpc, i32 0, i32 0), align 8
  %25 = load i32, i32* @zt5550_hc_enable_irq, align 4
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @zt5550_hpc_ops, i32 0, i32 2), align 4
  %26 = load i32, i32* @zt5550_hc_disable_irq, align 4
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @zt5550_hpc_ops, i32 0, i32 1), align 4
  %27 = load i32, i32* @zt5550_hc_check_irq, align 4
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @zt5550_hpc_ops, i32 0, i32 0), align 4
  br label %30

28:                                               ; preds = %13
  %29 = call i32 @info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %19
  %31 = call i32 @cpci_hp_register_controller(%struct.TYPE_11__* @zt5550_hpc)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %70

36:                                               ; preds = %30
  %37 = call i32 @dbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %38 = load i32, i32* @PCI_VENDOR_ID_DEC, align 4
  %39 = load i32, i32* @PCI_DEVICE_ID_DEC_21154, align 4
  %40 = call %struct.TYPE_12__* @pci_get_device(i32 %38, i32 %39, i32* null)
  store %struct.TYPE_12__* %40, %struct.TYPE_12__** @bus0_dev, align 8
  %41 = icmp ne %struct.TYPE_12__* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* @ENODEV, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %68

45:                                               ; preds = %36
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** @bus0_dev, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* @bus0, align 4
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** @bus0_dev, align 8
  %50 = call i32 @pci_dev_put(%struct.TYPE_12__* %49)
  %51 = load i32, i32* @bus0, align 4
  %52 = call i32 @cpci_hp_register_bus(i32 %51, i32 10, i32 15)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %45
  %56 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %68

57:                                               ; preds = %45
  %58 = call i32 @dbg(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %59 = call i32 (...) @cpci_hp_start()
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  %64 = load i32, i32* @bus0, align 4
  %65 = call i32 @cpci_hp_unregister_bus(i32 %64)
  br label %68

66:                                               ; preds = %57
  %67 = call i32 @dbg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %75

68:                                               ; preds = %62, %55, %42
  %69 = call i32 @cpci_hp_unregister_controller(%struct.TYPE_11__* @zt5550_hpc)
  br label %70

70:                                               ; preds = %68, %34
  %71 = load i32, i32* %6, align 4
  %72 = call i32 (i8*, ...) @err(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 %71)
  %73 = call i32 (...) @zt5550_hc_cleanup()
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %70, %66, %11
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @zt5550_hc_config(%struct.pci_dev*) #1

declare dso_local i32 @dbg(i8*) #1

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @info(i8*) #1

declare dso_local i32 @cpci_hp_register_controller(%struct.TYPE_11__*) #1

declare dso_local i32 @err(i8*, ...) #1

declare dso_local %struct.TYPE_12__* @pci_get_device(i32, i32, i32*) #1

declare dso_local i32 @pci_dev_put(%struct.TYPE_12__*) #1

declare dso_local i32 @cpci_hp_register_bus(i32, i32, i32) #1

declare dso_local i32 @cpci_hp_start(...) #1

declare dso_local i32 @cpci_hp_unregister_bus(i32) #1

declare dso_local i32 @cpci_hp_unregister_controller(%struct.TYPE_11__*) #1

declare dso_local i32 @zt5550_hc_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
