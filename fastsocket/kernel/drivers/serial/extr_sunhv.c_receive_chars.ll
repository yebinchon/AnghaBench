; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sunhv.c_receive_chars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sunhv.c_receive_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 (%struct.uart_port*, %struct.tty_struct*)* }
%struct.uart_port = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.tty_struct* }
%struct.tty_struct = type { i32 }

@sunhv_ops = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tty_struct* (%struct.uart_port*)* @receive_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tty_struct* @receive_chars(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.tty_struct*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  store %struct.tty_struct* null, %struct.tty_struct** %3, align 8
  %4 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %5 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %4, i32 0, i32 0
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %7 = icmp ne %struct.TYPE_5__* %6, null
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %10 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.tty_struct*, %struct.tty_struct** %13, align 8
  store %struct.tty_struct* %14, %struct.tty_struct** %3, align 8
  br label %15

15:                                               ; preds = %8, %1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** @sunhv_ops, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64 (%struct.uart_port*, %struct.tty_struct*)*, i64 (%struct.uart_port*, %struct.tty_struct*)** %17, align 8
  %19 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %20 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %21 = call i64 %18(%struct.uart_port* %19, %struct.tty_struct* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = call i32 (...) @sun_do_break()
  br label %25

25:                                               ; preds = %23, %15
  %26 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  ret %struct.tty_struct* %26
}

declare dso_local i32 @sun_do_break(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
