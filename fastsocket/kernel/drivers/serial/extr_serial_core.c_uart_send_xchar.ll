; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_core.c_uart_send_xchar.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_core.c_uart_send_xchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.uart_state* }
%struct.uart_state = type { %struct.uart_port* }
%struct.uart_port = type { i8, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.uart_port*)*, i32 (%struct.uart_port*, i8)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, i8)* @uart_send_xchar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uart_send_xchar(%struct.tty_struct* %0, i8 signext %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.uart_state*, align 8
  %6 = alloca %struct.uart_port*, align 8
  %7 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store i8 %1, i8* %4, align 1
  %8 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 0
  %10 = load %struct.uart_state*, %struct.uart_state** %9, align 8
  store %struct.uart_state* %10, %struct.uart_state** %5, align 8
  %11 = load %struct.uart_state*, %struct.uart_state** %5, align 8
  %12 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %11, i32 0, i32 0
  %13 = load %struct.uart_port*, %struct.uart_port** %12, align 8
  store %struct.uart_port* %13, %struct.uart_port** %6, align 8
  %14 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %15 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32 (%struct.uart_port*, i8)*, i32 (%struct.uart_port*, i8)** %17, align 8
  %19 = icmp ne i32 (%struct.uart_port*, i8)* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %2
  %21 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %22 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32 (%struct.uart_port*, i8)*, i32 (%struct.uart_port*, i8)** %24, align 8
  %26 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %27 = load i8, i8* %4, align 1
  %28 = call i32 %25(%struct.uart_port* %26, i8 signext %27)
  br label %52

29:                                               ; preds = %2
  %30 = load i8, i8* %4, align 1
  %31 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %32 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %31, i32 0, i32 0
  store i8 %30, i8* %32, align 8
  %33 = load i8, i8* %4, align 1
  %34 = icmp ne i8 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %29
  %36 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %37 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %36, i32 0, i32 1
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @spin_lock_irqsave(i32* %37, i64 %38)
  %40 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %41 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %40, i32 0, i32 2
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32 (%struct.uart_port*)*, i32 (%struct.uart_port*)** %43, align 8
  %45 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %46 = call i32 %44(%struct.uart_port* %45)
  %47 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %48 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %47, i32 0, i32 1
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  br label %51

51:                                               ; preds = %35, %29
  br label %52

52:                                               ; preds = %51, %20
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
