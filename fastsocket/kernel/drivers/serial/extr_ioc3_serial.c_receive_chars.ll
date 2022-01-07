; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ioc3_serial.c_receive_chars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ioc3_serial.c_receive_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, %struct.TYPE_4__, %struct.uart_state* }
%struct.TYPE_4__ = type { i32 }
%struct.uart_state = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.tty_struct* }
%struct.tty_struct = type { i32 }
%struct.ioc3_port = type { i32 }

@MAX_CHARS = common dso_local global i32 0, align 4
@INPUT_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @receive_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @receive_chars(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.uart_state*, align 8
  %11 = alloca %struct.ioc3_port*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %14 = load i32, i32* @MAX_CHARS, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %5, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %18 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %19 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %18, i32 0, i32 2
  %20 = load %struct.uart_state*, %struct.uart_state** %19, align 8
  store %struct.uart_state* %20, %struct.uart_state** %10, align 8
  %21 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %22 = call %struct.ioc3_port* @get_ioc3_port(%struct.uart_port* %21)
  store %struct.ioc3_port* %22, %struct.ioc3_port** %11, align 8
  %23 = load %struct.uart_state*, %struct.uart_state** %10, align 8
  %24 = icmp ne %struct.uart_state* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %80

26:                                               ; preds = %1
  %27 = load %struct.uart_state*, %struct.uart_state** %10, align 8
  %28 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load %struct.tty_struct*, %struct.tty_struct** %29, align 8
  %31 = icmp ne %struct.tty_struct* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %80

33:                                               ; preds = %26
  %34 = load %struct.ioc3_port*, %struct.ioc3_port** %11, align 8
  %35 = getelementptr inbounds %struct.ioc3_port, %struct.ioc3_port* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @INPUT_ENABLE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %80

41:                                               ; preds = %33
  %42 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %43 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %42, i32 0, i32 0
  %44 = load i64, i64* %12, align 8
  %45 = call i32 @spin_lock_irqsave(i32* %43, i64 %44)
  %46 = load %struct.uart_state*, %struct.uart_state** %10, align 8
  %47 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load %struct.tty_struct*, %struct.tty_struct** %48, align 8
  store %struct.tty_struct* %49, %struct.tty_struct** %4, align 8
  %50 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %51 = load i32, i32* @MAX_CHARS, align 4
  %52 = call i32 @do_read(%struct.uart_port* %50, i8* %17, i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %41
  store i32 1, i32* %9, align 4
  %56 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @tty_buffer_request_room(%struct.tty_struct* %56, i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @tty_insert_flip_string(%struct.tty_struct* %59, i8* %17, i32 %60)
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %64 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, %62
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %55, %41
  %69 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %70 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %69, i32 0, i32 0
  %71 = load i64, i64* %12, align 8
  %72 = call i32 @spin_unlock_irqrestore(i32* %70, i64 %71)
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %77 = call i32 @tty_flip_buffer_push(%struct.tty_struct* %76)
  br label %78

78:                                               ; preds = %75, %68
  %79 = load i32, i32* %7, align 4
  store i32 %79, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %80

80:                                               ; preds = %78, %40, %32, %25
  %81 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %81)
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.ioc3_port* @get_ioc3_port(%struct.uart_port*) #2

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #2

declare dso_local i32 @do_read(%struct.uart_port*, i8*, i32) #2

declare dso_local i32 @tty_buffer_request_room(%struct.tty_struct*, i32) #2

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
