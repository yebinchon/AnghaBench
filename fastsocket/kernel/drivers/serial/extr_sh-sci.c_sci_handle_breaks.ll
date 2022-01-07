; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sh-sci.c_sci_handle_breaks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sh-sci.c_sci_handle_breaks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.tty_struct* }
%struct.tty_struct = type { i32 }
%struct.sci_port = type { i32 }

@SCxSR = common dso_local global i32 0, align 4
@TTY_BREAK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"BREAK detected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @sci_handle_breaks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sci_handle_breaks(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca %struct.tty_struct*, align 8
  %7 = alloca %struct.sci_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %9 = load i32, i32* @SCxSR, align 4
  %10 = call zeroext i16 @sci_in(%struct.uart_port* %8, i32 %9)
  store i16 %10, i16* %5, align 2
  %11 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %12 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.tty_struct*, %struct.tty_struct** %15, align 8
  store %struct.tty_struct* %16, %struct.tty_struct** %6, align 8
  %17 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %18 = call %struct.sci_port* @to_sci_port(%struct.uart_port* %17)
  store %struct.sci_port* %18, %struct.sci_port** %7, align 8
  %19 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %20 = call i64 @uart_handle_break(%struct.uart_port* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %63

23:                                               ; preds = %1
  %24 = load %struct.sci_port*, %struct.sci_port** %7, align 8
  %25 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %49, label %28

28:                                               ; preds = %23
  %29 = load i16, i16* %5, align 2
  %30 = zext i16 %29 to i32
  %31 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %32 = call zeroext i16 @SCxSR_BRK(%struct.uart_port* %31)
  %33 = zext i16 %32 to i32
  %34 = and i32 %30, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %28
  %37 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %38 = load i32, i32* @TTY_BREAK, align 4
  %39 = call i64 @tty_insert_flip_char(%struct.tty_struct* %37, i32 0, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %41, %36
  %45 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %46 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @dev_dbg(i32 %47, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %49

49:                                               ; preds = %44, %28, %23
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %54 = call i32 @tty_flip_buffer_push(%struct.tty_struct* %53)
  br label %55

55:                                               ; preds = %52, %49
  %56 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %57 = call i64 @sci_handle_fifo_overrun(%struct.uart_port* %56)
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %59, %57
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %55, %22
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local zeroext i16 @sci_in(%struct.uart_port*, i32) #1

declare dso_local %struct.sci_port* @to_sci_port(%struct.uart_port*) #1

declare dso_local i64 @uart_handle_break(%struct.uart_port*) #1

declare dso_local zeroext i16 @SCxSR_BRK(%struct.uart_port*) #1

declare dso_local i64 @tty_insert_flip_char(%struct.tty_struct*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_struct*) #1

declare dso_local i64 @sci_handle_fifo_overrun(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
