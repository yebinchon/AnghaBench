; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_core.c_uart_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_serial_core.c_uart_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.uart_state* }
%struct.uart_state = type { %struct.circ_buf, %struct.uart_port* }
%struct.circ_buf = type { i32, i64, i32 }
%struct.uart_port = type { i32 }

@EL3HLT = common dso_local global i32 0, align 4
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i8*, i32)* @uart_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uart_write(%struct.tty_struct* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.uart_state*, align 8
  %9 = alloca %struct.uart_port*, align 8
  %10 = alloca %struct.circ_buf*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %15 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %14, i32 0, i32 0
  %16 = load %struct.uart_state*, %struct.uart_state** %15, align 8
  store %struct.uart_state* %16, %struct.uart_state** %8, align 8
  store i32 0, i32* %13, align 4
  %17 = load %struct.uart_state*, %struct.uart_state** %8, align 8
  %18 = icmp ne %struct.uart_state* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %3
  %20 = call i32 @WARN_ON(i32 1)
  %21 = load i32, i32* @EL3HLT, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %97

23:                                               ; preds = %3
  %24 = load %struct.uart_state*, %struct.uart_state** %8, align 8
  %25 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %24, i32 0, i32 1
  %26 = load %struct.uart_port*, %struct.uart_port** %25, align 8
  store %struct.uart_port* %26, %struct.uart_port** %9, align 8
  %27 = load %struct.uart_state*, %struct.uart_state** %8, align 8
  %28 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %27, i32 0, i32 0
  store %struct.circ_buf* %28, %struct.circ_buf** %10, align 8
  %29 = load %struct.circ_buf*, %struct.circ_buf** %10, align 8
  %30 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %97

34:                                               ; preds = %23
  %35 = load %struct.uart_port*, %struct.uart_port** %9, align 8
  %36 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %35, i32 0, i32 0
  %37 = load i64, i64* %11, align 8
  %38 = call i32 @spin_lock_irqsave(i32* %36, i64 %37)
  br label %39

39:                                               ; preds = %34, %57
  %40 = load %struct.circ_buf*, %struct.circ_buf** %10, align 8
  %41 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.circ_buf*, %struct.circ_buf** %10, align 8
  %44 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @UART_XMIT_SIZE, align 4
  %47 = call i32 @CIRC_SPACE_TO_END(i32 %42, i32 %45, i32 %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %39
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %12, align 4
  br label %53

53:                                               ; preds = %51, %39
  %54 = load i32, i32* %12, align 4
  %55 = icmp sle i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  br label %89

57:                                               ; preds = %53
  %58 = load %struct.circ_buf*, %struct.circ_buf** %10, align 8
  %59 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.circ_buf*, %struct.circ_buf** %10, align 8
  %62 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %60, %64
  %66 = load i8*, i8** %6, align 8
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @memcpy(i64 %65, i8* %66, i32 %67)
  %69 = load %struct.circ_buf*, %struct.circ_buf** %10, align 8
  %70 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %71, %72
  %74 = load i32, i32* @UART_XMIT_SIZE, align 4
  %75 = sub nsw i32 %74, 1
  %76 = and i32 %73, %75
  %77 = load %struct.circ_buf*, %struct.circ_buf** %10, align 8
  %78 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load i32, i32* %12, align 4
  %80 = load i8*, i8** %6, align 8
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  store i8* %82, i8** %6, align 8
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %7, align 4
  %85 = sub nsw i32 %84, %83
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %13, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %13, align 4
  br label %39

89:                                               ; preds = %56
  %90 = load %struct.uart_port*, %struct.uart_port** %9, align 8
  %91 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %90, i32 0, i32 0
  %92 = load i64, i64* %11, align 8
  %93 = call i32 @spin_unlock_irqrestore(i32* %91, i64 %92)
  %94 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %95 = call i32 @uart_start(%struct.tty_struct* %94)
  %96 = load i32, i32* %13, align 4
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %89, %33, %19
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @CIRC_SPACE_TO_END(i32, i32, i32) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @uart_start(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
