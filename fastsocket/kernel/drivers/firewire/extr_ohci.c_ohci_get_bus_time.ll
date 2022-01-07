; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_ohci.c_ohci_get_bus_time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_ohci.c_ohci_get_bus_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_card = type { i32 }
%struct.fw_ohci = type { i32 }

@OHCI1394_IsochronousCycleTimer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fw_card*)* @ohci_get_bus_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ohci_get_bus_time(%struct.fw_card* %0) #0 {
  %2 = alloca %struct.fw_card*, align 8
  %3 = alloca %struct.fw_ohci*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.fw_card* %0, %struct.fw_card** %2, align 8
  %6 = load %struct.fw_card*, %struct.fw_card** %2, align 8
  %7 = call %struct.fw_ohci* @fw_ohci(%struct.fw_card* %6)
  store %struct.fw_ohci* %7, %struct.fw_ohci** %3, align 8
  %8 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %9 = load i32, i32* @OHCI1394_IsochronousCycleTimer, align 4
  %10 = call i32 @reg_read(%struct.fw_ohci* %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.fw_ohci*, %struct.fw_ohci** %3, align 8
  %12 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %11, i32 0, i32 0
  %13 = call i64 @atomic_read(i32* %12)
  %14 = trunc i64 %13 to i32
  %15 = shl i32 %14, 32
  %16 = load i32, i32* %4, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  ret i32 %18
}

declare dso_local %struct.fw_ohci* @fw_ohci(%struct.fw_card*) #1

declare dso_local i32 @reg_read(%struct.fw_ohci*, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
