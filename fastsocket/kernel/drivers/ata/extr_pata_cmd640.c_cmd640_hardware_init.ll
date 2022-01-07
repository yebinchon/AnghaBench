; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_cmd640.c_cmd640_hardware_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_cmd640.c_cmd640_hardware_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@CFR = common dso_local global i32 0, align 4
@CMDTIM = common dso_local global i32 0, align 4
@BRST = common dso_local global i32 0, align 4
@CNTRL = common dso_local global i32 0, align 4
@ARTIM23 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @cmd640_hardware_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmd640_hardware_init(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call i32 @pci_write_config_byte(%struct.pci_dev* %5, i32 91, i32 0)
  %7 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %8 = load i32, i32* @CFR, align 4
  %9 = call i32 @pci_read_config_byte(%struct.pci_dev* %7, i32 %8, i32* %3)
  %10 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %11 = load i32, i32* @CMDTIM, align 4
  %12 = call i32 @pci_write_config_byte(%struct.pci_dev* %10, i32 %11, i32 0)
  %13 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %14 = load i32, i32* @BRST, align 4
  %15 = call i32 @pci_write_config_byte(%struct.pci_dev* %13, i32 %14, i32 64)
  %16 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %17 = load i32, i32* @CNTRL, align 4
  %18 = call i32 @pci_read_config_byte(%struct.pci_dev* %16, i32 %17, i32* %4)
  %19 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %20 = load i32, i32* @CNTRL, align 4
  %21 = load i32, i32* %4, align 4
  %22 = or i32 %21, 192
  %23 = call i32 @pci_write_config_byte(%struct.pci_dev* %19, i32 %20, i32 %22)
  %24 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %25 = load i32, i32* @ARTIM23, align 4
  %26 = call i32 @pci_read_config_byte(%struct.pci_dev* %24, i32 %25, i32* %4)
  %27 = load i32, i32* %4, align 4
  %28 = or i32 %27, 12
  store i32 %28, i32* %4, align 4
  %29 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %30 = load i32, i32* @ARTIM23, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @pci_write_config_byte(%struct.pci_dev* %29, i32 %30, i32 %31)
  ret void
}

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
