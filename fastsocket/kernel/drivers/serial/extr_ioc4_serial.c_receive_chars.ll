; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ioc4_serial.c_receive_chars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ioc4_serial.c_receive_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, %struct.uart_icount, %struct.uart_state* }
%struct.uart_icount = type { i32 }
%struct.uart_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.tty_struct* }
%struct.tty_struct = type { i32 }

@IOC4_MAX_CHARS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @receive_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @receive_chars(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.uart_icount*, align 8
  %9 = alloca %struct.uart_state*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %12 = load i32, i32* @IOC4_MAX_CHARS, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %4, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %5, align 8
  %16 = load i32, i32* @IOC4_MAX_CHARS, align 4
  store i32 %16, i32* %7, align 4
  %17 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %18 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %17, i32 0, i32 2
  %19 = load %struct.uart_state*, %struct.uart_state** %18, align 8
  store %struct.uart_state* %19, %struct.uart_state** %9, align 8
  %20 = load %struct.uart_state*, %struct.uart_state** %9, align 8
  %21 = icmp ne %struct.uart_state* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  store i32 1, i32* %11, align 4
  br label %69

23:                                               ; preds = %1
  %24 = load %struct.uart_state*, %struct.uart_state** %9, align 8
  %25 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.tty_struct*, %struct.tty_struct** %26, align 8
  %28 = icmp ne %struct.tty_struct* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  store i32 1, i32* %11, align 4
  br label %69

30:                                               ; preds = %23
  %31 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %32 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %31, i32 0, i32 0
  %33 = load i64, i64* %10, align 8
  %34 = call i32 @spin_lock_irqsave(i32* %32, i64 %33)
  %35 = load %struct.uart_state*, %struct.uart_state** %9, align 8
  %36 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load %struct.tty_struct*, %struct.tty_struct** %37, align 8
  store %struct.tty_struct* %38, %struct.tty_struct** %3, align 8
  %39 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %40 = load i32, i32* @IOC4_MAX_CHARS, align 4
  %41 = call i32 @tty_buffer_request_room(%struct.tty_struct* %39, i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %62

44:                                               ; preds = %30
  %45 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %46 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %45, i32 0, i32 1
  store %struct.uart_icount* %46, %struct.uart_icount** %8, align 8
  %47 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @do_read(%struct.uart_port* %47, i8* %15, i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %44
  %53 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @tty_insert_flip_string(%struct.tty_struct* %53, i8* %15, i32 %54)
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.uart_icount*, %struct.uart_icount** %8, align 8
  %58 = getelementptr inbounds %struct.uart_icount, %struct.uart_icount* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, %56
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %52, %44
  br label %62

62:                                               ; preds = %61, %30
  %63 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %64 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %63, i32 0, i32 0
  %65 = load i64, i64* %10, align 8
  %66 = call i32 @spin_unlock_irqrestore(i32* %64, i64 %65)
  %67 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %68 = call i32 @tty_flip_buffer_push(%struct.tty_struct* %67)
  store i32 0, i32* %11, align 4
  br label %69

69:                                               ; preds = %62, %29, %22
  %70 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %70)
  %71 = load i32, i32* %11, align 4
  switch i32 %71, label %73 [
    i32 0, label %72
    i32 1, label %72
  ]

72:                                               ; preds = %69, %69
  ret void

73:                                               ; preds = %69
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #2

declare dso_local i32 @tty_buffer_request_room(%struct.tty_struct*, i32) #2

declare dso_local i32 @do_read(%struct.uart_port*, i8*, i32) #2

declare dso_local i32 @tty_insert_flip_string(%struct.tty_struct*, i8*, i32) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #2

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_struct*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
