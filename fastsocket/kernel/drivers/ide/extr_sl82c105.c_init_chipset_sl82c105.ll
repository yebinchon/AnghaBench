; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_sl82c105.c_init_chipset_sl82c105.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_sl82c105.c_init_chipset_sl82c105.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"init_chipset_sl82c105()\0A\00", align 1
@CTRL_P0EN = common dso_local global i32 0, align 4
@CTRL_P0F16 = common dso_local global i32 0, align 4
@CTRL_P1F16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @init_chipset_sl82c105 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_chipset_sl82c105(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = call i32 @DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call i32 @pci_read_config_dword(%struct.pci_dev* %5, i32 64, i32* %3)
  %7 = load i32, i32* @CTRL_P0EN, align 4
  %8 = load i32, i32* @CTRL_P0F16, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @CTRL_P1F16, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* %3, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @pci_write_config_dword(%struct.pci_dev* %14, i32 64, i32 %15)
  ret i32 0
}

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
