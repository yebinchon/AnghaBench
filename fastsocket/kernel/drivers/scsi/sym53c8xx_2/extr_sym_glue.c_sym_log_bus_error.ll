; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/sym53c8xx_2/extr_sym_glue.c_sym_log_bus_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/sym53c8xx_2/extr_sym_glue.c_sym_log_bus_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.sym_data = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@PCI_STATUS = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"PCI bus error: status = 0x%04x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sym_log_bus_error(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  %3 = alloca %struct.sym_data*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i16, align 2
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  %6 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %7 = call %struct.sym_data* @shost_priv(%struct.Scsi_Host* %6)
  store %struct.sym_data* %7, %struct.sym_data** %3, align 8
  %8 = load %struct.sym_data*, %struct.sym_data** %3, align 8
  %9 = getelementptr inbounds %struct.sym_data, %struct.sym_data* %8, i32 0, i32 0
  %10 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  store %struct.pci_dev* %10, %struct.pci_dev** %4, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %12 = load i32, i32* @PCI_STATUS, align 4
  %13 = call i32 @pci_read_config_word(%struct.pci_dev* %11, i32 %12, i16* %5)
  %14 = load i16, i16* %5, align 2
  %15 = zext i16 %14 to i32
  %16 = and i32 %15, 63744
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %1
  %19 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %20 = load i32, i32* @PCI_STATUS, align 4
  %21 = load i16, i16* %5, align 2
  %22 = call i32 @pci_write_config_word(%struct.pci_dev* %19, i32 %20, i16 zeroext %21)
  %23 = load i32, i32* @KERN_WARNING, align 4
  %24 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %25 = load i16, i16* %5, align 2
  %26 = zext i16 %25 to i32
  %27 = and i32 %26, 63744
  %28 = trunc i32 %27 to i16
  %29 = call i32 @shost_printk(i32 %23, %struct.Scsi_Host* %24, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i16 zeroext %28)
  br label %30

30:                                               ; preds = %18, %1
  ret void
}

declare dso_local %struct.sym_data* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i16*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i16 zeroext) #1

declare dso_local i32 @shost_printk(i32, %struct.Scsi_Host*, i8*, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
