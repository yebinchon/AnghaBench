; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_core.c_uart_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_core.c_uart_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_state = type { %struct.TYPE_6__, i32, %struct.tty_port, %struct.uart_port* }
%struct.TYPE_6__ = type { i32* }
%struct.tty_port = type { i32, i32, %struct.tty_struct* }
%struct.tty_struct = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.uart_port = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.uart_port*)* }

@TTY_IO_ERROR = common dso_local global i32 0, align 4
@ASYNCB_INITIALIZED = common dso_local global i32 0, align 4
@HUPCL = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_state*)* @uart_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uart_shutdown(%struct.uart_state* %0) #0 {
  %2 = alloca %struct.uart_state*, align 8
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.tty_port*, align 8
  %5 = alloca %struct.tty_struct*, align 8
  store %struct.uart_state* %0, %struct.uart_state** %2, align 8
  %6 = load %struct.uart_state*, %struct.uart_state** %2, align 8
  %7 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %6, i32 0, i32 3
  %8 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  store %struct.uart_port* %8, %struct.uart_port** %3, align 8
  %9 = load %struct.uart_state*, %struct.uart_state** %2, align 8
  %10 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %9, i32 0, i32 2
  store %struct.tty_port* %10, %struct.tty_port** %4, align 8
  %11 = load %struct.tty_port*, %struct.tty_port** %4, align 8
  %12 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %11, i32 0, i32 2
  %13 = load %struct.tty_struct*, %struct.tty_struct** %12, align 8
  store %struct.tty_struct* %13, %struct.tty_struct** %5, align 8
  %14 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %15 = icmp ne %struct.tty_struct* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load i32, i32* @TTY_IO_ERROR, align 4
  %18 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %19 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %18, i32 0, i32 1
  %20 = call i32 @set_bit(i32 %17, i32* %19)
  br label %21

21:                                               ; preds = %16, %1
  %22 = load i32, i32* @ASYNCB_INITIALIZED, align 4
  %23 = load %struct.tty_port*, %struct.tty_port** %4, align 8
  %24 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %23, i32 0, i32 1
  %25 = call i64 @test_and_clear_bit(i32 %22, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %60

27:                                               ; preds = %21
  %28 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %29 = icmp ne %struct.tty_struct* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %32 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @HUPCL, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %30, %27
  %40 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %41 = load i32, i32* @TIOCM_DTR, align 4
  %42 = load i32, i32* @TIOCM_RTS, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @uart_clear_mctrl(%struct.uart_port* %40, i32 %43)
  br label %45

45:                                               ; preds = %39, %30
  %46 = load %struct.tty_port*, %struct.tty_port** %4, align 8
  %47 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %46, i32 0, i32 0
  %48 = call i32 @wake_up_interruptible(i32* %47)
  %49 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %50 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %49, i32 0, i32 1
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32 (%struct.uart_port*)*, i32 (%struct.uart_port*)** %52, align 8
  %54 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %55 = call i32 %53(%struct.uart_port* %54)
  %56 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %57 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @synchronize_irq(i32 %58)
  br label %60

60:                                               ; preds = %45, %21
  %61 = load %struct.uart_state*, %struct.uart_state** %2, align 8
  %62 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %61, i32 0, i32 1
  %63 = call i32 @tasklet_kill(i32* %62)
  %64 = load %struct.uart_state*, %struct.uart_state** %2, align 8
  %65 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %79

69:                                               ; preds = %60
  %70 = load %struct.uart_state*, %struct.uart_state** %2, align 8
  %71 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = ptrtoint i32* %73 to i64
  %75 = call i32 @free_page(i64 %74)
  %76 = load %struct.uart_state*, %struct.uart_state** %2, align 8
  %77 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  store i32* null, i32** %78, align 8
  br label %79

79:                                               ; preds = %69, %60
  ret void
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @uart_clear_mctrl(%struct.uart_port*, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @synchronize_irq(i32) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
