; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_zs.c_zs_start_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_zs.c_zs_start_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.zs_port = type { i64, %struct.zs_scc* }
%struct.zs_scc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @zs_start_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zs_start_tx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.zs_port*, align 8
  %4 = alloca %struct.zs_scc*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %5 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %6 = call %struct.zs_port* @to_zport(%struct.uart_port* %5)
  store %struct.zs_port* %6, %struct.zs_port** %3, align 8
  %7 = load %struct.zs_port*, %struct.zs_port** %3, align 8
  %8 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %7, i32 0, i32 1
  %9 = load %struct.zs_scc*, %struct.zs_scc** %8, align 8
  store %struct.zs_scc* %9, %struct.zs_scc** %4, align 8
  %10 = load %struct.zs_scc*, %struct.zs_scc** %4, align 8
  %11 = getelementptr inbounds %struct.zs_scc, %struct.zs_scc* %10, i32 0, i32 0
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.zs_port*, %struct.zs_port** %3, align 8
  %14 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.zs_port*, %struct.zs_port** %3, align 8
  %19 = call i32 @zs_transmit_drain(%struct.zs_port* %18, i32 0)
  %20 = load %struct.zs_port*, %struct.zs_port** %3, align 8
  %21 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  %22 = load %struct.zs_port*, %struct.zs_port** %3, align 8
  %23 = call i32 @zs_raw_transmit_chars(%struct.zs_port* %22)
  br label %24

24:                                               ; preds = %17, %1
  %25 = load %struct.zs_scc*, %struct.zs_scc** %4, align 8
  %26 = getelementptr inbounds %struct.zs_scc, %struct.zs_scc* %25, i32 0, i32 0
  %27 = call i32 @spin_unlock(i32* %26)
  ret void
}

declare dso_local %struct.zs_port* @to_zport(%struct.uart_port*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @zs_transmit_drain(%struct.zs_port*, i32) #1

declare dso_local i32 @zs_raw_transmit_chars(%struct.zs_port*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
