; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_core.c_uart_wait_modem_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_core.c_uart_wait_modem_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.uart_state = type { %struct.tty_port, %struct.uart_port* }
%struct.tty_port = type { i32 }
%struct.uart_port = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.uart_port*)* }
%struct.uart_icount = type { i64, i64, i64, i64 }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_6__* null, align 8
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@TIOCM_RNG = common dso_local global i64 0, align 8
@TIOCM_DSR = common dso_local global i64 0, align 8
@TIOCM_CD = common dso_local global i64 0, align 8
@TIOCM_CTS = common dso_local global i64 0, align 8
@ERESTARTSYS = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_state*, i64)* @uart_wait_modem_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uart_wait_modem_status(%struct.uart_state* %0, i64 %1) #0 {
  %3 = alloca %struct.uart_state*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.uart_port*, align 8
  %6 = alloca %struct.tty_port*, align 8
  %7 = alloca %struct.uart_icount, align 8
  %8 = alloca %struct.uart_icount, align 8
  %9 = alloca i32, align 4
  store %struct.uart_state* %0, %struct.uart_state** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.uart_state*, %struct.uart_state** %3, align 8
  %11 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %10, i32 0, i32 1
  %12 = load %struct.uart_port*, %struct.uart_port** %11, align 8
  store %struct.uart_port* %12, %struct.uart_port** %5, align 8
  %13 = load %struct.uart_state*, %struct.uart_state** %3, align 8
  %14 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %13, i32 0, i32 0
  store %struct.tty_port* %14, %struct.tty_port** %6, align 8
  %15 = load i32, i32* @wait, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %17 = call i32 @DECLARE_WAITQUEUE(i32 %15, %struct.TYPE_6__* %16)
  %18 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %19 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %18, i32 0, i32 0
  %20 = call i32 @spin_lock_irq(i32* %19)
  %21 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %22 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %21, i32 0, i32 1
  %23 = call i32 @memcpy(%struct.uart_icount* %7, i32* %22, i32 32)
  %24 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %25 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %24, i32 0, i32 2
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32 (%struct.uart_port*)*, i32 (%struct.uart_port*)** %27, align 8
  %29 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %30 = call i32 %28(%struct.uart_port* %29)
  %31 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %32 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %31, i32 0, i32 0
  %33 = call i32 @spin_unlock_irq(i32* %32)
  %34 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  %35 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %34, i32 0, i32 0
  %36 = call i32 @add_wait_queue(i32* %35, i32* @wait)
  br label %37

37:                                               ; preds = %101, %2
  %38 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %39 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %38, i32 0, i32 0
  %40 = call i32 @spin_lock_irq(i32* %39)
  %41 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %42 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %41, i32 0, i32 1
  %43 = call i32 @memcpy(%struct.uart_icount* %8, i32* %42, i32 32)
  %44 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %45 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %44, i32 0, i32 0
  %46 = call i32 @spin_unlock_irq(i32* %45)
  %47 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %48 = call i32 @set_current_state(i32 %47)
  %49 = load i64, i64* %4, align 8
  %50 = load i64, i64* @TIOCM_RNG, align 8
  %51 = and i64 %49, %50
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %37
  %54 = getelementptr inbounds %struct.uart_icount, %struct.uart_icount* %8, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.uart_icount, %struct.uart_icount* %7, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %55, %57
  br i1 %58, label %92, label %59

59:                                               ; preds = %53, %37
  %60 = load i64, i64* %4, align 8
  %61 = load i64, i64* @TIOCM_DSR, align 8
  %62 = and i64 %60, %61
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.uart_icount, %struct.uart_icount* %8, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.uart_icount, %struct.uart_icount* %7, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %66, %68
  br i1 %69, label %92, label %70

70:                                               ; preds = %64, %59
  %71 = load i64, i64* %4, align 8
  %72 = load i64, i64* @TIOCM_CD, align 8
  %73 = and i64 %71, %72
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.uart_icount, %struct.uart_icount* %8, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.uart_icount, %struct.uart_icount* %7, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %77, %79
  br i1 %80, label %92, label %81

81:                                               ; preds = %75, %70
  %82 = load i64, i64* %4, align 8
  %83 = load i64, i64* @TIOCM_CTS, align 8
  %84 = and i64 %82, %83
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.uart_icount, %struct.uart_icount* %8, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds %struct.uart_icount, %struct.uart_icount* %7, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %88, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %86, %75, %64, %53
  store i32 0, i32* %9, align 4
  br label %104

93:                                               ; preds = %86, %81
  %94 = call i32 (...) @schedule()
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %96 = call i64 @signal_pending(%struct.TYPE_6__* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load i32, i32* @ERESTARTSYS, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %9, align 4
  br label %104

101:                                              ; preds = %93
  %102 = bitcast %struct.uart_icount* %7 to i8*
  %103 = bitcast %struct.uart_icount* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %102, i8* align 8 %103, i64 32, i1 false)
  br label %37

104:                                              ; preds = %98, %92
  %105 = load i32, i32* @TASK_RUNNING, align 4
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 4
  %108 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  %109 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %108, i32 0, i32 0
  %110 = call i32 @remove_wait_queue(i32* %109, i32* @wait)
  %111 = load i32, i32* %9, align 4
  ret i32 %111
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @memcpy(%struct.uart_icount*, i32*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i64 @signal_pending(%struct.TYPE_6__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
