; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_mpsc.c_mpsc_tx_empty.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_mpsc.c_mpsc_tx_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.mpsc_port_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@TIOCSER_TEMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @mpsc_tx_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpsc_tx_empty(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.mpsc_port_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %7 = bitcast %struct.uart_port* %6 to %struct.mpsc_port_info*
  store %struct.mpsc_port_info* %7, %struct.mpsc_port_info** %3, align 8
  %8 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %3, align 8
  %9 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @spin_lock_irqsave(i32* %10, i32 %11)
  %13 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %3, align 8
  %14 = call i64 @mpsc_sdma_tx_active(%struct.mpsc_port_info* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @TIOCSER_TEMT, align 4
  br label %19

19:                                               ; preds = %17, %16
  %20 = phi i32 [ 0, %16 ], [ %18, %17 ]
  store i32 %20, i32* %5, align 4
  %21 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %3, align 8
  %22 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @spin_unlock_irqrestore(i32* %23, i32 %24)
  %26 = load i32, i32* %5, align 4
  ret i32 %26
}

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i64 @mpsc_sdma_tx_active(%struct.mpsc_port_info*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
