; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mn10300/kernel/extr_mn10300-serial.c_mn10300_serial_transmit_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mn10300/kernel/extr_mn10300-serial.c_mn10300_serial_transmit_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mn10300_serial_port = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mn10300_serial_port*)* @mn10300_serial_transmit_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mn10300_serial_transmit_interrupt(%struct.mn10300_serial_port* %0) #0 {
  %2 = alloca %struct.mn10300_serial_port*, align 8
  store %struct.mn10300_serial_port* %0, %struct.mn10300_serial_port** %2, align 8
  %3 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %2, align 8
  %4 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @_enter(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %2, align 8
  %8 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = icmp ne %struct.TYPE_6__* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %2, align 8
  %14 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %12, %1
  %22 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %2, align 8
  %23 = call i32 @mn10300_serial_dis_tx_intr(%struct.mn10300_serial_port* %22)
  br label %53

24:                                               ; preds = %12
  %25 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %2, align 8
  %26 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %25, i32 0, i32 0
  %27 = call i64 @uart_tx_stopped(%struct.TYPE_7__* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %24
  %30 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %2, align 8
  %31 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = call i64 @uart_circ_empty(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %29, %24
  %38 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %2, align 8
  %39 = call i32 @mn10300_serial_dis_tx_intr(%struct.mn10300_serial_port* %38)
  br label %40

40:                                               ; preds = %37, %29
  %41 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %2, align 8
  %42 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = call i64 @uart_circ_chars_pending(i32* %45)
  %47 = load i64, i64* @WAKEUP_CHARS, align 8
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %40
  %50 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %2, align 8
  %51 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %50, i32 0, i32 0
  %52 = call i32 @uart_write_wakeup(%struct.TYPE_7__* %51)
  br label %53

53:                                               ; preds = %21, %49, %40
  ret void
}

declare dso_local i32 @_enter(i8*, i32) #1

declare dso_local i32 @mn10300_serial_dis_tx_intr(%struct.mn10300_serial_port*) #1

declare dso_local i64 @uart_tx_stopped(%struct.TYPE_7__*) #1

declare dso_local i64 @uart_circ_empty(i32*) #1

declare dso_local i64 @uart_circ_chars_pending(i32*) #1

declare dso_local i32 @uart_write_wakeup(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
