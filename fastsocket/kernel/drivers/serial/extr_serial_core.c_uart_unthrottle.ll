; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_core.c_uart_unthrottle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_core.c_uart_unthrottle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.TYPE_2__*, %struct.uart_state* }
%struct.TYPE_2__ = type { i32 }
%struct.uart_state = type { %struct.uart_port* }
%struct.uart_port = type { i64 }

@CRTSCTS = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@CDTRDSR = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @uart_unthrottle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uart_unthrottle(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.uart_state*, align 8
  %4 = alloca %struct.uart_port*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %5 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %6 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %5, i32 0, i32 1
  %7 = load %struct.uart_state*, %struct.uart_state** %6, align 8
  store %struct.uart_state* %7, %struct.uart_state** %3, align 8
  %8 = load %struct.uart_state*, %struct.uart_state** %3, align 8
  %9 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %8, i32 0, i32 0
  %10 = load %struct.uart_port*, %struct.uart_port** %9, align 8
  store %struct.uart_port* %10, %struct.uart_port** %4, align 8
  %11 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %12 = call i64 @I_IXOFF(%struct.tty_struct* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %1
  %15 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %16 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %21 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  br label %27

22:                                               ; preds = %14
  %23 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %24 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %25 = call i32 @START_CHAR(%struct.tty_struct* %24)
  %26 = call i32 @uart_send_xchar(%struct.tty_struct* %23, i32 %25)
  br label %27

27:                                               ; preds = %22, %19
  br label %28

28:                                               ; preds = %27, %1
  %29 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %30 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @CRTSCTS, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %28
  %38 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %39 = load i32, i32* @TIOCM_RTS, align 4
  %40 = call i32 @uart_set_mctrl(%struct.uart_port* %38, i32 %39)
  br label %41

41:                                               ; preds = %37, %28
  %42 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %43 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @CDTRDSR, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %41
  %51 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %52 = load i32, i32* @TIOCM_DTR, align 4
  %53 = call i32 @uart_set_mctrl(%struct.uart_port* %51, i32 %52)
  br label %54

54:                                               ; preds = %50, %41
  ret void
}

declare dso_local i64 @I_IXOFF(%struct.tty_struct*) #1

declare dso_local i32 @uart_send_xchar(%struct.tty_struct*, i32) #1

declare dso_local i32 @START_CHAR(%struct.tty_struct*) #1

declare dso_local i32 @uart_set_mctrl(%struct.uart_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
