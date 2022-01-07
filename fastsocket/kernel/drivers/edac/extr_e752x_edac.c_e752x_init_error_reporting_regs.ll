; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_e752x_edac.c_e752x_init_error_reporting_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_e752x_edac.c_e752x_init_error_reporting_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e752x_pvt = type { %struct.TYPE_2__*, %struct.pci_dev* }
%struct.TYPE_2__ = type { i64 }
%struct.pci_dev = type { i32 }

@PCI_DEVICE_ID_INTEL_3100_1_ERR = common dso_local global i64 0, align 8
@I3100_NSI_EMASK = common dso_local global i32 0, align 4
@I3100_NSI_SMICMD = common dso_local global i32 0, align 4
@E752X_HI_ERRMASK = common dso_local global i32 0, align 4
@E752X_HI_SMICMD = common dso_local global i32 0, align 4
@E752X_SYSBUS_SMICMD = common dso_local global i32 0, align 4
@E752X_BUF_ERRMASK = common dso_local global i32 0, align 4
@E752X_BUF_SMICMD = common dso_local global i32 0, align 4
@E752X_DRAM_ERRMASK = common dso_local global i32 0, align 4
@E752X_DRAM_SMICMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e752x_pvt*)* @e752x_init_error_reporting_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e752x_init_error_reporting_regs(%struct.e752x_pvt* %0) #0 {
  %2 = alloca %struct.e752x_pvt*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  store %struct.e752x_pvt* %0, %struct.e752x_pvt** %2, align 8
  %4 = load %struct.e752x_pvt*, %struct.e752x_pvt** %2, align 8
  %5 = getelementptr inbounds %struct.e752x_pvt, %struct.e752x_pvt* %4, i32 0, i32 1
  %6 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  store %struct.pci_dev* %6, %struct.pci_dev** %3, align 8
  %7 = load %struct.e752x_pvt*, %struct.e752x_pvt** %2, align 8
  %8 = getelementptr inbounds %struct.e752x_pvt, %struct.e752x_pvt* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PCI_DEVICE_ID_INTEL_3100_1_ERR, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %16 = load i32, i32* @I3100_NSI_EMASK, align 4
  %17 = call i32 @pci_write_config_dword(%struct.pci_dev* %15, i32 %16, i32 0)
  %18 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %19 = load i32, i32* @I3100_NSI_SMICMD, align 4
  %20 = call i32 @pci_write_config_dword(%struct.pci_dev* %18, i32 %19, i32 0)
  br label %28

21:                                               ; preds = %1
  %22 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %23 = load i32, i32* @E752X_HI_ERRMASK, align 4
  %24 = call i32 @pci_write_config_byte(%struct.pci_dev* %22, i32 %23, i32 0)
  %25 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %26 = load i32, i32* @E752X_HI_SMICMD, align 4
  %27 = call i32 @pci_write_config_byte(%struct.pci_dev* %25, i32 %26, i32 0)
  br label %28

28:                                               ; preds = %21, %14
  %29 = load %struct.e752x_pvt*, %struct.e752x_pvt** %2, align 8
  %30 = call i32 @e752x_init_sysbus_parity_mask(%struct.e752x_pvt* %29)
  %31 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %32 = load i32, i32* @E752X_SYSBUS_SMICMD, align 4
  %33 = call i32 @pci_write_config_word(%struct.pci_dev* %31, i32 %32, i32 0)
  %34 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %35 = load i32, i32* @E752X_BUF_ERRMASK, align 4
  %36 = call i32 @pci_write_config_byte(%struct.pci_dev* %34, i32 %35, i32 0)
  %37 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %38 = load i32, i32* @E752X_BUF_SMICMD, align 4
  %39 = call i32 @pci_write_config_byte(%struct.pci_dev* %37, i32 %38, i32 0)
  %40 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %41 = load i32, i32* @E752X_DRAM_ERRMASK, align 4
  %42 = call i32 @pci_write_config_byte(%struct.pci_dev* %40, i32 %41, i32 0)
  %43 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %44 = load i32, i32* @E752X_DRAM_SMICMD, align 4
  %45 = call i32 @pci_write_config_byte(%struct.pci_dev* %43, i32 %44, i32 0)
  ret void
}

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @e752x_init_sysbus_parity_mask(%struct.e752x_pvt*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
