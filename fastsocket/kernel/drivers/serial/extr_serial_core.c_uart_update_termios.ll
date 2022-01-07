; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_core.c_uart_update_termios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_core.c_uart_update_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_state = type { %struct.uart_port*, %struct.TYPE_5__ }
%struct.uart_port = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.tty_struct* }
%struct.tty_struct = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@TTY_IO_ERROR = common dso_local global i32 0, align 4
@CBAUD = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_state*)* @uart_update_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uart_update_termios(%struct.uart_state* %0) #0 {
  %2 = alloca %struct.uart_state*, align 8
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.uart_port*, align 8
  store %struct.uart_state* %0, %struct.uart_state** %2, align 8
  %5 = load %struct.uart_state*, %struct.uart_state** %2, align 8
  %6 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load %struct.tty_struct*, %struct.tty_struct** %7, align 8
  store %struct.tty_struct* %8, %struct.tty_struct** %3, align 8
  %9 = load %struct.uart_state*, %struct.uart_state** %2, align 8
  %10 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %9, i32 0, i32 0
  %11 = load %struct.uart_port*, %struct.uart_port** %10, align 8
  store %struct.uart_port* %11, %struct.uart_port** %4, align 8
  %12 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %13 = call i64 @uart_console(%struct.uart_port* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %36

15:                                               ; preds = %1
  %16 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %17 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %15
  %23 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %24 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %29 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32 %27, i32* %31, align 4
  %32 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %33 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  store i32 0, i32* %35, align 4
  br label %36

36:                                               ; preds = %22, %15, %1
  %37 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %38 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @TTY_IO_ERROR, align 4
  %41 = shl i32 1, %40
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %62, label %44

44:                                               ; preds = %36
  %45 = load %struct.uart_state*, %struct.uart_state** %2, align 8
  %46 = call i32 @uart_change_speed(%struct.uart_state* %45, i32* null)
  %47 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %48 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @CBAUD, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %44
  %56 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %57 = load i32, i32* @TIOCM_DTR, align 4
  %58 = load i32, i32* @TIOCM_RTS, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @uart_set_mctrl(%struct.uart_port* %56, i32 %59)
  br label %61

61:                                               ; preds = %55, %44
  br label %62

62:                                               ; preds = %61, %36
  ret void
}

declare dso_local i64 @uart_console(%struct.uart_port*) #1

declare dso_local i32 @uart_change_speed(%struct.uart_state*, i32*) #1

declare dso_local i32 @uart_set_mctrl(%struct.uart_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
