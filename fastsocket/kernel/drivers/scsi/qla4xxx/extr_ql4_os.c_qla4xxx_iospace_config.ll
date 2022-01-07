; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_iospace_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_os.c_qla4xxx_iospace_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i64, i64, i32, i32 }

@IORESOURCE_IO = common dso_local global i64 0, align 8
@MIN_IOBASE_LEN = common dso_local global i64 0, align 8
@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Invalid PCI I/O region size\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"region #0 not a PIO resource\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i64 0, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"region #0 not an MMIO resource, aborting\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Invalid PCI mem region size, aborting\0A\00", align 1
@DRIVER_NAME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"Failed to reserve PIO/MMIO regions\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"cannot remap MMIO, aborting\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla4xxx_iospace_config(%struct.scsi_qla_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_qla_host*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %3, align 8
  %10 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %11 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @pci_resource_start(i32 %12, i32 0)
  store i64 %13, i64* %4, align 8
  %14 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %15 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @pci_resource_len(i32 %16, i32 0)
  store i64 %17, i64* %5, align 8
  %18 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %19 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @pci_resource_flags(i32 %20, i32 0)
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @IORESOURCE_IO, align 8
  %24 = and i64 %22, %23
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %1
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* @MIN_IOBASE_LEN, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i32, i32* @KERN_WARNING, align 4
  %32 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %33 = call i32 @ql4_printk(i32 %31, %struct.scsi_qla_host* %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %4, align 8
  br label %34

34:                                               ; preds = %30, %26
  br label %39

35:                                               ; preds = %1
  %36 = load i32, i32* @KERN_WARNING, align 4
  %37 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %38 = call i32 @ql4_printk(i32 %36, %struct.scsi_qla_host* %37, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* %4, align 8
  br label %39

39:                                               ; preds = %35, %34
  %40 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %41 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @pci_resource_start(i32 %42, i32 1)
  store i64 %43, i64* %7, align 8
  %44 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %45 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @pci_resource_len(i32 %46, i32 1)
  store i64 %47, i64* %8, align 8
  %48 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %49 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @pci_resource_flags(i32 %50, i32 1)
  store i64 %51, i64* %9, align 8
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* @IORESOURCE_MEM, align 8
  %54 = and i64 %52, %53
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %39
  %57 = load i32, i32* @KERN_ERR, align 4
  %58 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %59 = call i32 @ql4_printk(i32 %57, %struct.scsi_qla_host* %58, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %100

60:                                               ; preds = %39
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* @MIN_IOBASE_LEN, align 8
  %63 = icmp ult i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i32, i32* @KERN_ERR, align 4
  %66 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %67 = call i32 @ql4_printk(i32 %65, %struct.scsi_qla_host* %66, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %100

68:                                               ; preds = %60
  %69 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %70 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @DRIVER_NAME, align 4
  %73 = call i64 @pci_request_regions(i32 %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %68
  %76 = load i32, i32* @KERN_WARNING, align 4
  %77 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %78 = call i32 @ql4_printk(i32 %76, %struct.scsi_qla_host* %77, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %100

79:                                               ; preds = %68
  %80 = load i64, i64* %4, align 8
  %81 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %82 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  %83 = load i64, i64* %5, align 8
  %84 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %85 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %84, i32 0, i32 1
  store i64 %83, i64* %85, align 8
  %86 = load i64, i64* %7, align 8
  %87 = load i64, i64* @MIN_IOBASE_LEN, align 8
  %88 = call i32 @ioremap(i64 %86, i64 %87)
  %89 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %90 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 8
  %91 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %92 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %79
  %96 = load i32, i32* @KERN_ERR, align 4
  %97 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %98 = call i32 @ql4_printk(i32 %96, %struct.scsi_qla_host* %97, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %100

99:                                               ; preds = %79
  store i32 0, i32* %2, align 4
  br label %103

100:                                              ; preds = %95, %75, %64, %56
  %101 = load i32, i32* @ENOMEM, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %2, align 4
  br label %103

103:                                              ; preds = %100, %99
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i64 @pci_resource_start(i32, i32) #1

declare dso_local i64 @pci_resource_len(i32, i32) #1

declare dso_local i64 @pci_resource_flags(i32, i32) #1

declare dso_local i32 @ql4_printk(i32, %struct.scsi_qla_host*, i8*) #1

declare dso_local i64 @pci_request_regions(i32, i32) #1

declare dso_local i32 @ioremap(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
