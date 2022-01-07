; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_acpiphp_glue.c_ioapic_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_acpiphp_glue.c_ioapic_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.acpiphp_ioapic = type { i32, %struct.pci_dev*, i32 }

@.str = private unnamed_addr constant [5 x i8] c"_STA\00", align 1
@ACPI_STA_ALL = common dso_local global i64 0, align 8
@AE_CTRL_DEPTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"_HID\00", align 1
@AE_OK = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"I/O APIC(acpiphp)\00", align 1
@ioapic_list_lock = common dso_local global i32 0, align 4
@ioapic_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i8**)* @ioapic_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioapic_add(i32 %0, i32 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.pci_dev*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.acpiphp_ioapic*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @acpi_evaluate_integer(i32 %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, i64* %11)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = call i64 @ACPI_SUCCESS(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %4
  %23 = load i64, i64* %11, align 8
  %24 = load i64, i64* @ACPI_STA_ALL, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @AE_CTRL_DEPTH, align 4
  store i32 %27, i32* %5, align 4
  br label %102

28:                                               ; preds = %22, %4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @acpi_get_handle(i32 %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %12)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i64 @ACPI_SUCCESS(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @AE_CTRL_DEPTH, align 4
  store i32 %35, i32* %5, align 4
  br label %102

36:                                               ; preds = %28
  %37 = load i32, i32* %6, align 4
  %38 = call i64 @get_gsi_base(i32 %37, i32* %14)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* @AE_OK, align 4
  store i32 %41, i32* %5, align 4
  br label %102

42:                                               ; preds = %36
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call %struct.acpiphp_ioapic* @kmalloc(i32 24, i32 %43)
  store %struct.acpiphp_ioapic* %44, %struct.acpiphp_ioapic** %16, align 8
  %45 = load %struct.acpiphp_ioapic*, %struct.acpiphp_ioapic** %16, align 8
  %46 = icmp ne %struct.acpiphp_ioapic* %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %48, i32* %5, align 4
  br label %102

49:                                               ; preds = %42
  %50 = load i32, i32* %6, align 4
  %51 = call %struct.pci_dev* @get_apic_pci_info(i32 %50)
  store %struct.pci_dev* %51, %struct.pci_dev** %13, align 8
  %52 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %53 = icmp ne %struct.pci_dev* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  br label %98

55:                                               ; preds = %49
  %56 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %57 = call i64 @pci_enable_device(%struct.pci_dev* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %95

60:                                               ; preds = %55
  %61 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %62 = call i32 @pci_set_master(%struct.pci_dev* %61)
  %63 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %64 = call i64 @pci_request_region(%struct.pci_dev* %63, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  br label %92

67:                                               ; preds = %60
  %68 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %69 = call i32 @pci_resource_start(%struct.pci_dev* %68, i32 0)
  store i32 %69, i32* %15, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %15, align 4
  %72 = load i32, i32* %14, align 4
  %73 = call i64 @acpi_register_ioapic(i32 %70, i32 %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  br label %89

76:                                               ; preds = %67
  %77 = load i32, i32* %14, align 4
  %78 = load %struct.acpiphp_ioapic*, %struct.acpiphp_ioapic** %16, align 8
  %79 = getelementptr inbounds %struct.acpiphp_ioapic, %struct.acpiphp_ioapic* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %81 = load %struct.acpiphp_ioapic*, %struct.acpiphp_ioapic** %16, align 8
  %82 = getelementptr inbounds %struct.acpiphp_ioapic, %struct.acpiphp_ioapic* %81, i32 0, i32 1
  store %struct.pci_dev* %80, %struct.pci_dev** %82, align 8
  %83 = call i32 @spin_lock(i32* @ioapic_list_lock)
  %84 = load %struct.acpiphp_ioapic*, %struct.acpiphp_ioapic** %16, align 8
  %85 = getelementptr inbounds %struct.acpiphp_ioapic, %struct.acpiphp_ioapic* %84, i32 0, i32 0
  %86 = call i32 @list_add_tail(i32* %85, i32* @ioapic_list)
  %87 = call i32 @spin_unlock(i32* @ioapic_list_lock)
  %88 = load i32, i32* @AE_OK, align 4
  store i32 %88, i32* %5, align 4
  br label %102

89:                                               ; preds = %75
  %90 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %91 = call i32 @pci_release_region(%struct.pci_dev* %90, i32 0)
  br label %92

92:                                               ; preds = %89, %66
  %93 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %94 = call i32 @pci_disable_device(%struct.pci_dev* %93)
  br label %95

95:                                               ; preds = %92, %59
  %96 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %97 = call i32 @pci_dev_put(%struct.pci_dev* %96)
  br label %98

98:                                               ; preds = %95, %54
  %99 = load %struct.acpiphp_ioapic*, %struct.acpiphp_ioapic** %16, align 8
  %100 = call i32 @kfree(%struct.acpiphp_ioapic* %99)
  %101 = load i32, i32* @AE_OK, align 4
  store i32 %101, i32* %5, align 4
  br label %102

102:                                              ; preds = %98, %76, %47, %40, %34, %26
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local i32 @acpi_evaluate_integer(i32, i8*, i32*, i64*) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @acpi_get_handle(i32, i8*, i32*) #1

declare dso_local i64 @get_gsi_base(i32, i32*) #1

declare dso_local %struct.acpiphp_ioapic* @kmalloc(i32, i32) #1

declare dso_local %struct.pci_dev* @get_apic_pci_info(i32) #1

declare dso_local i64 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i64 @pci_request_region(%struct.pci_dev*, i32, i8*) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i64 @acpi_register_ioapic(i32, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pci_release_region(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

declare dso_local i32 @kfree(%struct.acpiphp_ioapic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
