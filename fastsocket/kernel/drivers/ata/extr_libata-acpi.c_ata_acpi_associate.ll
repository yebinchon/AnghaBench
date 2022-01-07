; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-acpi.c_ata_acpi_associate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-acpi.c_ata_acpi_associate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_host = type { i32, %struct.ata_port**, i32, i32 }
%struct.ata_port = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ata_port* }
%struct.ata_device = type { i32, i64, %struct.TYPE_2__ }

@libata_noacpi = common dso_local global i64 0, align 8
@ATA_FLAG_ACPI_SATA = common dso_local global i32 0, align 4
@ata_acpi_ap_dock_ops = common dso_local global i32 0, align 4
@ata_acpi_dev_dock_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ata_acpi_associate(%struct.ata_host* %0) #0 {
  %2 = alloca %struct.ata_host*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ata_port*, align 8
  %6 = alloca %struct.ata_device*, align 8
  store %struct.ata_host* %0, %struct.ata_host** %2, align 8
  %7 = load %struct.ata_host*, %struct.ata_host** %2, align 8
  %8 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @is_pci_dev(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i64, i64* @libata_noacpi, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %1
  br label %105

16:                                               ; preds = %12
  %17 = load %struct.ata_host*, %struct.ata_host** %2, align 8
  %18 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @DEVICE_ACPI_HANDLE(i32 %19)
  %21 = load %struct.ata_host*, %struct.ata_host** %2, align 8
  %22 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load %struct.ata_host*, %struct.ata_host** %2, align 8
  %24 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %16
  br label %105

28:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %102, %28
  %30 = load i32, i32* %3, align 4
  %31 = load %struct.ata_host*, %struct.ata_host** %2, align 8
  %32 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %105

35:                                               ; preds = %29
  %36 = load %struct.ata_host*, %struct.ata_host** %2, align 8
  %37 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %36, i32 0, i32 1
  %38 = load %struct.ata_port**, %struct.ata_port*** %37, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.ata_port*, %struct.ata_port** %38, i64 %40
  %42 = load %struct.ata_port*, %struct.ata_port** %41, align 8
  store %struct.ata_port* %42, %struct.ata_port** %5, align 8
  %43 = load %struct.ata_host*, %struct.ata_host** %2, align 8
  %44 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %43, i32 0, i32 1
  %45 = load %struct.ata_port**, %struct.ata_port*** %44, align 8
  %46 = getelementptr inbounds %struct.ata_port*, %struct.ata_port** %45, i64 0
  %47 = load %struct.ata_port*, %struct.ata_port** %46, align 8
  %48 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @ATA_FLAG_ACPI_SATA, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %35
  %54 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %55 = call i32 @ata_acpi_associate_sata_port(%struct.ata_port* %54)
  br label %59

56:                                               ; preds = %35
  %57 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %58 = call i32 @ata_acpi_associate_ide_port(%struct.ata_port* %57)
  br label %59

59:                                               ; preds = %56, %53
  %60 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %61 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %66 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %69 = call i32 @register_hotplug_dock_device(i64 %67, i32* @ata_acpi_ap_dock_ops, %struct.ata_port* %68)
  br label %70

70:                                               ; preds = %64, %59
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %98, %70
  %72 = load i32, i32* %4, align 4
  %73 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %74 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %73, i32 0, i32 2
  %75 = call i32 @ata_link_max_devices(%struct.TYPE_2__* %74)
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %101

77:                                               ; preds = %71
  %78 = load %struct.ata_port*, %struct.ata_port** %5, align 8
  %79 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load %struct.ata_port*, %struct.ata_port** %80, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %81, i64 %83
  %85 = bitcast %struct.ata_port* %84 to %struct.ata_device*
  store %struct.ata_device* %85, %struct.ata_device** %6, align 8
  %86 = load %struct.ata_device*, %struct.ata_device** %6, align 8
  %87 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %77
  %91 = load %struct.ata_device*, %struct.ata_device** %6, align 8
  %92 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.ata_device*, %struct.ata_device** %6, align 8
  %95 = bitcast %struct.ata_device* %94 to %struct.ata_port*
  %96 = call i32 @register_hotplug_dock_device(i64 %93, i32* @ata_acpi_dev_dock_ops, %struct.ata_port* %95)
  br label %97

97:                                               ; preds = %90, %77
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %4, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %4, align 4
  br label %71

101:                                              ; preds = %71
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %3, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %3, align 4
  br label %29

105:                                              ; preds = %15, %27, %29
  ret void
}

declare dso_local i32 @is_pci_dev(i32) #1

declare dso_local i32 @DEVICE_ACPI_HANDLE(i32) #1

declare dso_local i32 @ata_acpi_associate_sata_port(%struct.ata_port*) #1

declare dso_local i32 @ata_acpi_associate_ide_port(%struct.ata_port*) #1

declare dso_local i32 @register_hotplug_dock_device(i64, i32*, %struct.ata_port*) #1

declare dso_local i32 @ata_link_max_devices(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
