; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_hci_ll.c_ll_device_woke_up.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_hci_ll.c_ll_device_woke_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_uart = type { %struct.ll_struct* }
%struct.ll_struct = type { i64, i32 }

@.str = private unnamed_addr constant [6 x i8] c"hu %p\00", align 1
@HCILL_ASLEEP_TO_AWAKE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"received HCILL_WAKE_UP_ACK in state %ld\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_uart*)* @ll_device_woke_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ll_device_woke_up(%struct.hci_uart* %0) #0 {
  %2 = alloca %struct.hci_uart*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.ll_struct*, align 8
  store %struct.hci_uart* %0, %struct.hci_uart** %2, align 8
  %5 = load %struct.hci_uart*, %struct.hci_uart** %2, align 8
  %6 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %5, i32 0, i32 0
  %7 = load %struct.ll_struct*, %struct.ll_struct** %6, align 8
  store %struct.ll_struct* %7, %struct.ll_struct** %4, align 8
  %8 = load %struct.hci_uart*, %struct.hci_uart** %2, align 8
  %9 = call i32 @BT_DBG(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.hci_uart* %8)
  %10 = load %struct.ll_struct*, %struct.ll_struct** %4, align 8
  %11 = getelementptr inbounds %struct.ll_struct, %struct.ll_struct* %10, i32 0, i32 1
  %12 = load i64, i64* %3, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.ll_struct*, %struct.ll_struct** %4, align 8
  %15 = getelementptr inbounds %struct.ll_struct, %struct.ll_struct* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @HCILL_ASLEEP_TO_AWAKE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.ll_struct*, %struct.ll_struct** %4, align 8
  %21 = getelementptr inbounds %struct.ll_struct, %struct.ll_struct* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @BT_ERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %22)
  br label %24

24:                                               ; preds = %19, %1
  %25 = load %struct.ll_struct*, %struct.ll_struct** %4, align 8
  %26 = call i32 @__ll_do_awake(%struct.ll_struct* %25)
  %27 = load %struct.ll_struct*, %struct.ll_struct** %4, align 8
  %28 = getelementptr inbounds %struct.ll_struct, %struct.ll_struct* %27, i32 0, i32 1
  %29 = load i64, i64* %3, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  %31 = load %struct.hci_uart*, %struct.hci_uart** %2, align 8
  %32 = call i32 @hci_uart_tx_wakeup(%struct.hci_uart* %31)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.hci_uart*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @BT_ERR(i8*, i64) #1

declare dso_local i32 @__ll_do_awake(%struct.ll_struct*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @hci_uart_tx_wakeup(%struct.hci_uart*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
