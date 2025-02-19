; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_s2io.c_s2io_init_pci.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_s2io.c_s2io_init_pci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s2io_nic = type { i32 }

@PCIX_COMMAND_REGISTER = common dso_local global i32 0, align 4
@PCI_COMMAND = common dso_local global i32 0, align 4
@PCI_COMMAND_PARITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s2io_nic*)* @s2io_init_pci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s2io_init_pci(%struct.s2io_nic* %0) #0 {
  %2 = alloca %struct.s2io_nic*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.s2io_nic* %0, %struct.s2io_nic** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %5 = load %struct.s2io_nic*, %struct.s2io_nic** %2, align 8
  %6 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @PCIX_COMMAND_REGISTER, align 4
  %9 = call i32 @pci_read_config_word(i32 %7, i32 %8, i32* %4)
  %10 = load %struct.s2io_nic*, %struct.s2io_nic** %2, align 8
  %11 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @PCIX_COMMAND_REGISTER, align 4
  %14 = load i32, i32* %4, align 4
  %15 = or i32 %14, 1
  %16 = call i32 @pci_write_config_word(i32 %12, i32 %13, i32 %15)
  %17 = load %struct.s2io_nic*, %struct.s2io_nic** %2, align 8
  %18 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @PCIX_COMMAND_REGISTER, align 4
  %21 = call i32 @pci_read_config_word(i32 %19, i32 %20, i32* %4)
  %22 = load %struct.s2io_nic*, %struct.s2io_nic** %2, align 8
  %23 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @PCI_COMMAND, align 4
  %26 = call i32 @pci_read_config_word(i32 %24, i32 %25, i32* %3)
  %27 = load %struct.s2io_nic*, %struct.s2io_nic** %2, align 8
  %28 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @PCI_COMMAND, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @PCI_COMMAND_PARITY, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @pci_write_config_word(i32 %29, i32 %30, i32 %33)
  %35 = load %struct.s2io_nic*, %struct.s2io_nic** %2, align 8
  %36 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @PCI_COMMAND, align 4
  %39 = call i32 @pci_read_config_word(i32 %37, i32 %38, i32* %3)
  ret void
}

declare dso_local i32 @pci_read_config_word(i32, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
