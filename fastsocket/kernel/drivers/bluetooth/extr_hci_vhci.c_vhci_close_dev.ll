; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_hci_vhci.c_vhci_close_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_hci_vhci.c_vhci_close_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32, %struct.vhci_data* }
%struct.vhci_data = type { i32 }

@HCI_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*)* @vhci_close_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vhci_close_dev(%struct.hci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.vhci_data*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  %5 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %6 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %5, i32 0, i32 1
  %7 = load %struct.vhci_data*, %struct.vhci_data** %6, align 8
  store %struct.vhci_data* %7, %struct.vhci_data** %4, align 8
  %8 = load i32, i32* @HCI_RUNNING, align 4
  %9 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %10 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %9, i32 0, i32 0
  %11 = call i32 @test_and_clear_bit(i32 %8, i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %18

14:                                               ; preds = %1
  %15 = load %struct.vhci_data*, %struct.vhci_data** %4, align 8
  %16 = getelementptr inbounds %struct.vhci_data, %struct.vhci_data* %15, i32 0, i32 0
  %17 = call i32 @skb_queue_purge(i32* %16)
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %14, %13
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
