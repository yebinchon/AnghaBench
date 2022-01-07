; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ohci1394.c_ohci_set_hw_config_rom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ohci1394.c_ohci_set_hw_config_rom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_host = type { %struct.ti_ohci* }
%struct.ti_ohci = type { i32 }

@OHCI1394_ConfigROMhdr = common dso_local global i32 0, align 4
@OHCI1394_BusOptions = common dso_local global i32 0, align 4
@OHCI_CONFIG_ROM_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hpsb_host*, i32*)* @ohci_set_hw_config_rom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ohci_set_hw_config_rom(%struct.hpsb_host* %0, i32* %1) #0 {
  %3 = alloca %struct.hpsb_host*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ti_ohci*, align 8
  store %struct.hpsb_host* %0, %struct.hpsb_host** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.hpsb_host*, %struct.hpsb_host** %3, align 8
  %7 = getelementptr inbounds %struct.hpsb_host, %struct.hpsb_host* %6, i32 0, i32 0
  %8 = load %struct.ti_ohci*, %struct.ti_ohci** %7, align 8
  store %struct.ti_ohci* %8, %struct.ti_ohci** %5, align 8
  %9 = load %struct.ti_ohci*, %struct.ti_ohci** %5, align 8
  %10 = load i32, i32* @OHCI1394_ConfigROMhdr, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @be32_to_cpu(i32 %13)
  %15 = call i32 @reg_write(%struct.ti_ohci* %9, i32 %10, i32 %14)
  %16 = load %struct.ti_ohci*, %struct.ti_ohci** %5, align 8
  %17 = load i32, i32* @OHCI1394_BusOptions, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @be32_to_cpu(i32 %20)
  %22 = call i32 @reg_write(%struct.ti_ohci* %16, i32 %17, i32 %21)
  %23 = load %struct.ti_ohci*, %struct.ti_ohci** %5, align 8
  %24 = getelementptr inbounds %struct.ti_ohci, %struct.ti_ohci* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* @OHCI_CONFIG_ROM_LEN, align 4
  %28 = call i32 @memcpy(i32 %25, i32* %26, i32 %27)
  ret void
}

declare dso_local i32 @reg_write(%struct.ti_ohci*, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
