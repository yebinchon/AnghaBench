; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_main.c_netxen_create_diag_entries.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_main.c_netxen_create_diag_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netxen_adapter = type { %struct.TYPE_4__*, %struct.TYPE_3__, %struct.pci_dev* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.pci_dev = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"%s: Supports Fw Dump Capability\0A\00", align 1
@dev_attr_fwdump_state = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"failed to create fwdump_state sysfs entry\0A\00", align 1
@bin_attr_fw_dump = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"failed to create fw_dump sysfs entry\0A\00", align 1
@dev_attr_fwdump_size = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"failed to create fwdump_size sysfs entry\0A\00", align 1
@dev_attr_fwdump_level = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"failed to create fwdump_level sysfs entry\0A\00", align 1
@dev_attr_diag_mode = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"failed to create diag_mode sysfs entry\0A\00", align 1
@bin_attr_crb = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"failed to create crb sysfs entry\0A\00", align 1
@bin_attr_mem = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"failed to create mem sysfs entry\0A\00", align 1
@bin_attr_dimm = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [35 x i8] c"failed to create dimm sysfs entry\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netxen_adapter*)* @netxen_create_diag_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netxen_create_diag_entries(%struct.netxen_adapter* %0) #0 {
  %2 = alloca %struct.netxen_adapter*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.netxen_adapter* %0, %struct.netxen_adapter** %2, align 8
  %5 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %5, i32 0, i32 2
  %7 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  store %struct.pci_dev* %7, %struct.pci_dev** %3, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %9 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %52

15:                                               ; preds = %1
  %16 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 0
  %18 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %19 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %17, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = call i64 @device_create_file(%struct.device* %24, i32* @dev_attr_fwdump_state)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %15
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %28, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %15
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = call i64 @device_create_bin_file(%struct.device* %31, i32* @bin_attr_fw_dump)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %35, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %30
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = call i64 @device_create_file(%struct.device* %38, i32* @dev_attr_fwdump_size)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %42, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %37
  %45 = load %struct.device*, %struct.device** %4, align 8
  %46 = call i64 @device_create_file(%struct.device* %45, i32* @dev_attr_fwdump_level)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load %struct.device*, %struct.device** %4, align 8
  %50 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %49, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  br label %51

51:                                               ; preds = %48, %44
  br label %52

52:                                               ; preds = %51, %1
  %53 = load %struct.device*, %struct.device** %4, align 8
  %54 = call i64 @device_create_file(%struct.device* %53, i32* @dev_attr_diag_mode)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load %struct.device*, %struct.device** %4, align 8
  %58 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %57, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  br label %59

59:                                               ; preds = %56, %52
  %60 = load %struct.device*, %struct.device** %4, align 8
  %61 = call i64 @device_create_bin_file(%struct.device* %60, i32* @bin_attr_crb)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load %struct.device*, %struct.device** %4, align 8
  %65 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %64, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  br label %66

66:                                               ; preds = %63, %59
  %67 = load %struct.device*, %struct.device** %4, align 8
  %68 = call i64 @device_create_bin_file(%struct.device* %67, i32* @bin_attr_mem)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load %struct.device*, %struct.device** %4, align 8
  %72 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %71, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  br label %73

73:                                               ; preds = %70, %66
  %74 = load %struct.device*, %struct.device** %4, align 8
  %75 = call i64 @device_create_bin_file(%struct.device* %74, i32* @bin_attr_dimm)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load %struct.device*, %struct.device** %4, align 8
  %79 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %78, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  br label %80

80:                                               ; preds = %77, %73
  ret void
}

declare dso_local i32 @dev_info(%struct.device*, i8*, ...) #1

declare dso_local i64 @device_create_file(%struct.device*, i32*) #1

declare dso_local i64 @device_create_bin_file(%struct.device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
