; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/jsm/extr_jsm_tty.c_jsm_tty_set_termios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/jsm/extr_jsm_tty.c_jsm_tty_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.ktermios = type { i32*, i32, i32, i32, i32 }
%struct.jsm_channel = type { %struct.TYPE_4__*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.jsm_channel*)* }

@VSTART = common dso_local global i64 0, align 8
@VSTOP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* @jsm_tty_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jsm_tty_set_termios(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.jsm_channel*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %9 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %10 = bitcast %struct.uart_port* %9 to %struct.jsm_channel*
  store %struct.jsm_channel* %10, %struct.jsm_channel** %8, align 8
  %11 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %12 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %11, i32 0, i32 0
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %16 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.jsm_channel*, %struct.jsm_channel** %8, align 8
  %19 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %18, i32 0, i32 6
  store i32 %17, i32* %19, align 4
  %20 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %21 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.jsm_channel*, %struct.jsm_channel** %8, align 8
  %24 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %23, i32 0, i32 5
  store i32 %22, i32* %24, align 8
  %25 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %26 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.jsm_channel*, %struct.jsm_channel** %8, align 8
  %29 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 4
  %30 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %31 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.jsm_channel*, %struct.jsm_channel** %8, align 8
  %34 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 8
  %35 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %36 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @VSTART, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.jsm_channel*, %struct.jsm_channel** %8, align 8
  %42 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %44 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* @VSTOP, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.jsm_channel*, %struct.jsm_channel** %8, align 8
  %50 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  %51 = load %struct.jsm_channel*, %struct.jsm_channel** %8, align 8
  %52 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32 (%struct.jsm_channel*)*, i32 (%struct.jsm_channel*)** %56, align 8
  %58 = load %struct.jsm_channel*, %struct.jsm_channel** %8, align 8
  %59 = call i32 %57(%struct.jsm_channel* %58)
  %60 = load %struct.jsm_channel*, %struct.jsm_channel** %8, align 8
  %61 = call i32 @jsm_carrier(%struct.jsm_channel* %60)
  %62 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %63 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %62, i32 0, i32 0
  %64 = load i64, i64* %7, align 8
  %65 = call i32 @spin_unlock_irqrestore(i32* %63, i64 %64)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @jsm_carrier(%struct.jsm_channel*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
