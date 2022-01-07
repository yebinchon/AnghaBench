; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_core.c___uart_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_core.c___uart_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, i32, %struct.uart_state* }
%struct.uart_state = type { %struct.TYPE_4__, %struct.uart_port* }
%struct.TYPE_4__ = type { i64 }
%struct.uart_port = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.uart_port*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @__uart_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__uart_start(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.uart_state*, align 8
  %4 = alloca %struct.uart_port*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %5 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %6 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %5, i32 0, i32 2
  %7 = load %struct.uart_state*, %struct.uart_state** %6, align 8
  store %struct.uart_state* %7, %struct.uart_state** %3, align 8
  %8 = load %struct.uart_state*, %struct.uart_state** %3, align 8
  %9 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %8, i32 0, i32 1
  %10 = load %struct.uart_port*, %struct.uart_port** %9, align 8
  store %struct.uart_port* %10, %struct.uart_port** %4, align 8
  %11 = load %struct.uart_state*, %struct.uart_state** %3, align 8
  %12 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %11, i32 0, i32 0
  %13 = call i32 @uart_circ_empty(%struct.TYPE_4__* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %39, label %15

15:                                               ; preds = %1
  %16 = load %struct.uart_state*, %struct.uart_state** %3, align 8
  %17 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %15
  %22 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %23 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %39, label %26

26:                                               ; preds = %21
  %27 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %28 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %26
  %32 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %33 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32 (%struct.uart_port*)*, i32 (%struct.uart_port*)** %35, align 8
  %37 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %38 = call i32 %36(%struct.uart_port* %37)
  br label %39

39:                                               ; preds = %31, %26, %21, %15, %1
  ret void
}

declare dso_local i32 @uart_circ_empty(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
