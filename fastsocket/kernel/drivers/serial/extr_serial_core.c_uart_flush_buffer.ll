; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_core.c_uart_flush_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_core.c_uart_flush_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.uart_state* }
%struct.uart_state = type { i32, %struct.uart_port* }
%struct.uart_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.uart_port*)* }

@.str = private unnamed_addr constant [30 x i8] c"uart_flush_buffer(%d) called\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @uart_flush_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uart_flush_buffer(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.uart_state*, align 8
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %6 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %7 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %6, i32 0, i32 1
  %8 = load %struct.uart_state*, %struct.uart_state** %7, align 8
  store %struct.uart_state* %8, %struct.uart_state** %3, align 8
  %9 = load %struct.uart_state*, %struct.uart_state** %3, align 8
  %10 = icmp ne %struct.uart_state* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = call i32 @WARN_ON(i32 1)
  br label %49

13:                                               ; preds = %1
  %14 = load %struct.uart_state*, %struct.uart_state** %3, align 8
  %15 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %14, i32 0, i32 1
  %16 = load %struct.uart_port*, %struct.uart_port** %15, align 8
  store %struct.uart_port* %16, %struct.uart_port** %4, align 8
  %17 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %18 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %22 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %21, i32 0, i32 0
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.uart_state*, %struct.uart_state** %3, align 8
  %26 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %25, i32 0, i32 0
  %27 = call i32 @uart_circ_clear(i32* %26)
  %28 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %29 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (%struct.uart_port*)*, i32 (%struct.uart_port*)** %31, align 8
  %33 = icmp ne i32 (%struct.uart_port*)* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %13
  %35 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %36 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32 (%struct.uart_port*)*, i32 (%struct.uart_port*)** %38, align 8
  %40 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %41 = call i32 %39(%struct.uart_port* %40)
  br label %42

42:                                               ; preds = %34, %13
  %43 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %44 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %43, i32 0, i32 0
  %45 = load i64, i64* %5, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  %47 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %48 = call i32 @tty_wakeup(%struct.tty_struct* %47)
  br label %49

49:                                               ; preds = %42, %11
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @uart_circ_clear(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @tty_wakeup(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
