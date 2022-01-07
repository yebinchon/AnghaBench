; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_sata_nv.c_nv_swncq_slave_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_sata_nv.c_nv_swncq_slave_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i64, i32, i64, i64, i32 }
%struct.ata_port = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.ata_device* }
%struct.ata_device = type { i64, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.pci_dev = type { i64 }

@ATA_ID_PROD_LEN = common dso_local global i32 0, align 4
@ATA_MAX_DEVICES = common dso_local global i64 0, align 8
@ATA_FLAG_NCQ = common dso_local global i32 0, align 4
@ATA_DEV_ATAPI = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_NVIDIA_NFORCE_MCP51_SATA = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_NVIDIA_NFORCE_MCP51_SATA2 = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_NVIDIA_NFORCE_MCP55_SATA = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_NVIDIA_NFORCE_MCP55_SATA2 = common dso_local global i64 0, align 8
@ATA_ID_PROD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Maxtor\00", align 1
@SCSI_QDEPTH_DEFAULT = common dso_local global i32 0, align 4
@KERN_NOTICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Disabling SWNCQ mode (depth %x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*)* @nv_swncq_slave_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv_swncq_slave_config(%struct.scsi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.ata_port*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.ata_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  %13 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %14 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.ata_port* @ata_shost_to_port(i32 %15)
  store %struct.ata_port* %16, %struct.ata_port** %4, align 8
  %17 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %18 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %17, i32 0, i32 2
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.pci_dev* @to_pci_dev(i32 %21)
  store %struct.pci_dev* %22, %struct.pci_dev** %5, align 8
  store i32 0, i32* %9, align 4
  %23 = load i32, i32* @ATA_ID_PROD_LEN, align 4
  %24 = add nsw i32 %23, 1
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %10, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %11, align 8
  %28 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %29 = call i32 @ata_scsi_slave_config(%struct.scsi_device* %28)
  store i32 %29, i32* %7, align 4
  %30 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %31 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ATA_MAX_DEVICES, align 8
  %34 = icmp uge i64 %32, %33
  br i1 %34, label %45, label %35

35:                                               ; preds = %1
  %36 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %37 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %42 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40, %35, %1
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %128

47:                                               ; preds = %40
  %48 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %49 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load %struct.ata_device*, %struct.ata_device** %50, align 8
  %52 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %53 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %51, i64 %54
  store %struct.ata_device* %55, %struct.ata_device** %6, align 8
  %56 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %57 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @ATA_FLAG_NCQ, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %47
  %63 = load %struct.ata_device*, %struct.ata_device** %6, align 8
  %64 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @ATA_DEV_ATAPI, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %62, %47
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %128

70:                                               ; preds = %62
  %71 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %72 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @PCI_DEVICE_ID_NVIDIA_NFORCE_MCP51_SATA, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %82, label %76

76:                                               ; preds = %70
  %77 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %78 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @PCI_DEVICE_ID_NVIDIA_NFORCE_MCP51_SATA2, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %76, %70
  store i32 1, i32* %9, align 4
  br label %83

83:                                               ; preds = %82, %76
  %84 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %85 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @PCI_DEVICE_ID_NVIDIA_NFORCE_MCP55_SATA, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %95, label %89

89:                                               ; preds = %83
  %90 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %91 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @PCI_DEVICE_ID_NVIDIA_NFORCE_MCP55_SATA2, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %89, %83
  %96 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %97 = call i32 @pci_read_config_byte(%struct.pci_dev* %96, i32 8, i32* %8)
  %98 = load i32, i32* %8, align 4
  %99 = icmp sle i32 %98, 162
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  store i32 1, i32* %9, align 4
  br label %101

101:                                              ; preds = %100, %95
  br label %102

102:                                              ; preds = %101, %89
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %102
  %106 = load i32, i32* %7, align 4
  store i32 %106, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %128

107:                                              ; preds = %102
  %108 = load %struct.ata_device*, %struct.ata_device** %6, align 8
  %109 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @ATA_ID_PROD, align 4
  %112 = trunc i64 %25 to i32
  %113 = call i32 @ata_id_c_string(i32 %110, i8* %27, i32 %111, i32 %112)
  %114 = call i64 @strncmp(i8* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %126

116:                                              ; preds = %107
  %117 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %118 = load i32, i32* @SCSI_QDEPTH_DEFAULT, align 4
  %119 = call i32 @ata_scsi_change_queue_depth(%struct.scsi_device* %117, i32 1, i32 %118)
  %120 = load %struct.ata_device*, %struct.ata_device** %6, align 8
  %121 = load i32, i32* @KERN_NOTICE, align 4
  %122 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %123 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @ata_dev_printk(%struct.ata_device* %120, i32 %121, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %124)
  br label %126

126:                                              ; preds = %116, %107
  %127 = load i32, i32* %7, align 4
  store i32 %127, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %128

128:                                              ; preds = %126, %105, %68, %45
  %129 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %129)
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local %struct.ata_port* @ata_shost_to_port(i32) #1

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ata_scsi_slave_config(%struct.scsi_device*) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @ata_id_c_string(i32, i8*, i32, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @ata_scsi_change_queue_depth(%struct.scsi_device*, i32, i32) #1

declare dso_local i32 @ata_dev_printk(%struct.ata_device*, i32, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
