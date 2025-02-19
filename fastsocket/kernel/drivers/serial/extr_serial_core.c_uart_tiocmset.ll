; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_core.c_uart_tiocmset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_core.c_uart_tiocmset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.uart_state* }
%struct.uart_state = type { %struct.tty_port, %struct.uart_port* }
%struct.tty_port = type { i32 }
%struct.uart_port = type { i32 }
%struct.file = type { i32 }

@EIO = common dso_local global i32 0, align 4
@TTY_IO_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.file*, i32, i32)* @uart_tiocmset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uart_tiocmset(%struct.tty_struct* %0, %struct.file* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.uart_state*, align 8
  %10 = alloca %struct.uart_port*, align 8
  %11 = alloca %struct.tty_port*, align 8
  %12 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %5, align 8
  store %struct.file* %1, %struct.file** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %14 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %13, i32 0, i32 1
  %15 = load %struct.uart_state*, %struct.uart_state** %14, align 8
  store %struct.uart_state* %15, %struct.uart_state** %9, align 8
  %16 = load %struct.uart_state*, %struct.uart_state** %9, align 8
  %17 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %16, i32 0, i32 1
  %18 = load %struct.uart_port*, %struct.uart_port** %17, align 8
  store %struct.uart_port* %18, %struct.uart_port** %10, align 8
  %19 = load %struct.uart_state*, %struct.uart_state** %9, align 8
  %20 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %19, i32 0, i32 0
  store %struct.tty_port* %20, %struct.tty_port** %11, align 8
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %12, align 4
  %23 = load %struct.tty_port*, %struct.tty_port** %11, align 8
  %24 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.file*, %struct.file** %6, align 8
  %27 = icmp ne %struct.file* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %4
  %29 = load %struct.file*, %struct.file** %6, align 8
  %30 = call i32 @tty_hung_up_p(%struct.file* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %45, label %32

32:                                               ; preds = %28, %4
  %33 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %34 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @TTY_IO_ERROR, align 4
  %37 = shl i32 1, %36
  %38 = and i32 %35, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %32
  %41 = load %struct.uart_port*, %struct.uart_port** %10, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @uart_update_mctrl(%struct.uart_port* %41, i32 %42, i32 %43)
  store i32 0, i32* %12, align 4
  br label %45

45:                                               ; preds = %40, %32, %28
  %46 = load %struct.tty_port*, %struct.tty_port** %11, align 8
  %47 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %46, i32 0, i32 0
  %48 = call i32 @mutex_unlock(i32* %47)
  %49 = load i32, i32* %12, align 4
  ret i32 %49
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @tty_hung_up_p(%struct.file*) #1

declare dso_local i32 @uart_update_mctrl(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
