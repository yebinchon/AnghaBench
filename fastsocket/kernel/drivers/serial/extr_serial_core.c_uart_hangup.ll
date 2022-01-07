; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_core.c_uart_hangup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_core.c_uart_hangup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.uart_state* }
%struct.uart_state = type { %struct.TYPE_2__*, %struct.tty_port }
%struct.TYPE_2__ = type { i32 }
%struct.tty_port = type { i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [17 x i8] c"uart_hangup(%d)\0A\00", align 1
@ASYNC_NORMAL_ACTIVE = common dso_local global i32 0, align 4
@ASYNCB_NORMAL_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @uart_hangup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uart_hangup(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.uart_state*, align 8
  %4 = alloca %struct.tty_port*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %5 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %6 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %5, i32 0, i32 0
  %7 = load %struct.uart_state*, %struct.uart_state** %6, align 8
  store %struct.uart_state* %7, %struct.uart_state** %3, align 8
  %8 = load %struct.uart_state*, %struct.uart_state** %3, align 8
  %9 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %8, i32 0, i32 1
  store %struct.tty_port* %9, %struct.tty_port** %4, align 8
  %10 = call i32 (...) @kernel_locked()
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load %struct.uart_state*, %struct.uart_state** %3, align 8
  %16 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.tty_port*, %struct.tty_port** %4, align 8
  %22 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %21, i32 0, i32 1
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.tty_port*, %struct.tty_port** %4, align 8
  %25 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @ASYNC_NORMAL_ACTIVE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %49

30:                                               ; preds = %1
  %31 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %32 = call i32 @uart_flush_buffer(%struct.tty_struct* %31)
  %33 = load %struct.uart_state*, %struct.uart_state** %3, align 8
  %34 = call i32 @uart_shutdown(%struct.uart_state* %33)
  %35 = load %struct.tty_port*, %struct.tty_port** %4, align 8
  %36 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %35, i32 0, i32 4
  store i64 0, i64* %36, align 8
  %37 = load i32, i32* @ASYNCB_NORMAL_ACTIVE, align 4
  %38 = load %struct.tty_port*, %struct.tty_port** %4, align 8
  %39 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %38, i32 0, i32 0
  %40 = call i32 @clear_bit(i32 %37, i32* %39)
  %41 = load %struct.tty_port*, %struct.tty_port** %4, align 8
  %42 = call i32 @tty_port_tty_set(%struct.tty_port* %41, i32* null)
  %43 = load %struct.tty_port*, %struct.tty_port** %4, align 8
  %44 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %43, i32 0, i32 3
  %45 = call i32 @wake_up_interruptible(i32* %44)
  %46 = load %struct.tty_port*, %struct.tty_port** %4, align 8
  %47 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %46, i32 0, i32 2
  %48 = call i32 @wake_up_interruptible(i32* %47)
  br label %49

49:                                               ; preds = %30, %1
  %50 = load %struct.tty_port*, %struct.tty_port** %4, align 8
  %51 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %50, i32 0, i32 1
  %52 = call i32 @mutex_unlock(i32* %51)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @kernel_locked(...) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @uart_flush_buffer(%struct.tty_struct*) #1

declare dso_local i32 @uart_shutdown(%struct.uart_state*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @tty_port_tty_set(%struct.tty_port*, i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
