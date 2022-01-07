; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800pci.c_rt2800pci_txdone_entry_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800pci.c_rt2800pci_txdone_entry_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue_entry = type { i32 }

@TX_STA_FIFO_WCID = common dso_local global i32 0, align 4
@TXWI_W1_WIRELESS_CLI_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.queue_entry*, i32)* @rt2800pci_txdone_entry_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2800pci_txdone_entry_check(%struct.queue_entry* %0, i32 %1) #0 {
  %3 = alloca %struct.queue_entry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.queue_entry* %0, %struct.queue_entry** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @TX_STA_FIFO_WCID, align 4
  %11 = call i32 @rt2x00_get_field32(i32 %9, i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load %struct.queue_entry*, %struct.queue_entry** %3, align 8
  %13 = call i32* @rt2800_drv_get_txwi(%struct.queue_entry* %12)
  store i32* %13, i32** %5, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @rt2x00_desc_read(i32* %14, i32 1, i32* %6)
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @TXWI_W1_WIRELESS_CLI_ID, align 4
  %18 = call i32 @rt2x00_get_field32(i32 %16, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp eq i32 %19, %20
  %22 = zext i1 %21 to i32
  ret i32 %22
}

declare dso_local i32 @rt2x00_get_field32(i32, i32) #1

declare dso_local i32* @rt2800_drv_get_txwi(%struct.queue_entry*) #1

declare dso_local i32 @rt2x00_desc_read(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
