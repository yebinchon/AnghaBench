; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_m32r_sio.c_serial_unlink_irq_chain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_m32r_sio.c_serial_unlink_irq_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_info = type { i32* }
%struct.uart_sio_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@irq_lists = common dso_local global %struct.irq_info* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_sio_port*)* @serial_unlink_irq_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serial_unlink_irq_chain(%struct.uart_sio_port* %0) #0 {
  %2 = alloca %struct.uart_sio_port*, align 8
  %3 = alloca %struct.irq_info*, align 8
  store %struct.uart_sio_port* %0, %struct.uart_sio_port** %2, align 8
  %4 = load %struct.irq_info*, %struct.irq_info** @irq_lists, align 8
  %5 = load %struct.uart_sio_port*, %struct.uart_sio_port** %2, align 8
  %6 = getelementptr inbounds %struct.uart_sio_port, %struct.uart_sio_port* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.irq_info, %struct.irq_info* %4, i64 %9
  store %struct.irq_info* %10, %struct.irq_info** %3, align 8
  %11 = load %struct.irq_info*, %struct.irq_info** %3, align 8
  %12 = getelementptr inbounds %struct.irq_info, %struct.irq_info* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load %struct.irq_info*, %struct.irq_info** %3, align 8
  %18 = getelementptr inbounds %struct.irq_info, %struct.irq_info* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = call i64 @list_empty(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %1
  %23 = load %struct.uart_sio_port*, %struct.uart_sio_port** %2, align 8
  %24 = getelementptr inbounds %struct.uart_sio_port, %struct.uart_sio_port* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.irq_info*, %struct.irq_info** %3, align 8
  %28 = call i32 @free_irq(i32 %26, %struct.irq_info* %27)
  %29 = load %struct.uart_sio_port*, %struct.uart_sio_port** %2, align 8
  %30 = getelementptr inbounds %struct.uart_sio_port, %struct.uart_sio_port* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  %34 = load %struct.irq_info*, %struct.irq_info** %3, align 8
  %35 = call i32 @free_irq(i32 %33, %struct.irq_info* %34)
  br label %36

36:                                               ; preds = %22, %1
  %37 = load %struct.irq_info*, %struct.irq_info** %3, align 8
  %38 = load %struct.uart_sio_port*, %struct.uart_sio_port** %2, align 8
  %39 = call i32 @serial_do_unlink(%struct.irq_info* %37, %struct.uart_sio_port* %38)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @free_irq(i32, %struct.irq_info*) #1

declare dso_local i32 @serial_do_unlink(%struct.irq_info*, %struct.uart_sio_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
