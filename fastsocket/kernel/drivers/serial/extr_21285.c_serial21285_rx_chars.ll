; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_21285.c_serial21285_rx_chars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_21285.c_serial21285_rx_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.tty_struct* }
%struct.tty_struct = type { i32 }

@CSR_UARTFLG = common dso_local global i32* null, align 8
@CSR_UARTDR = common dso_local global i32* null, align 8
@TTY_NORMAL = common dso_local global i32 0, align 4
@CSR_RXSTAT = common dso_local global i32* null, align 8
@RXSTAT_DUMMY_READ = common dso_local global i32 0, align 4
@RXSTAT_ANYERR = common dso_local global i32 0, align 4
@RXSTAT_PARITY = common dso_local global i32 0, align 4
@RXSTAT_FRAME = common dso_local global i32 0, align 4
@RXSTAT_OVERRUN = common dso_local global i32 0, align 4
@TTY_PARITY = common dso_local global i32 0, align 4
@TTY_FRAME = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @serial21285_rx_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serial21285_rx_chars(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.uart_port*, align 8
  %6 = alloca %struct.tty_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.uart_port*
  store %struct.uart_port* %13, %struct.uart_port** %5, align 8
  %14 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %15 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %14, i32 0, i32 2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.tty_struct*, %struct.tty_struct** %18, align 8
  store %struct.tty_struct* %19, %struct.tty_struct** %6, align 8
  store i32 256, i32* %11, align 4
  %20 = load i32*, i32** @CSR_UARTFLG, align 8
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %105, %2
  %23 = load i32, i32* %7, align 4
  %24 = and i32 %23, 16
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %11, align 4
  %28 = add i32 %27, -1
  store i32 %28, i32* %11, align 4
  %29 = icmp ne i32 %27, 0
  br label %30

30:                                               ; preds = %26, %22
  %31 = phi i1 [ false, %22 ], [ %29, %26 ]
  br i1 %31, label %32, label %114

32:                                               ; preds = %30
  %33 = load i32*, i32** @CSR_UARTDR, align 8
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* @TTY_NORMAL, align 4
  store i32 %35, i32* %9, align 4
  %36 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %37 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  %41 = load i32*, i32** @CSR_RXSTAT, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @RXSTAT_DUMMY_READ, align 4
  %44 = or i32 %42, %43
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @RXSTAT_ANYERR, align 4
  %47 = and i32 %45, %46
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %105

50:                                               ; preds = %32
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @RXSTAT_PARITY, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %57 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  br label %73

61:                                               ; preds = %50
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @RXSTAT_FRAME, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %68 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %66, %61
  br label %73

73:                                               ; preds = %72, %55
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* @RXSTAT_OVERRUN, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %80 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %78, %73
  %85 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %86 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %10, align 4
  %89 = and i32 %88, %87
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* @RXSTAT_PARITY, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %84
  %95 = load i32, i32* @TTY_PARITY, align 4
  store i32 %95, i32* %9, align 4
  br label %104

96:                                               ; preds = %84
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* @RXSTAT_FRAME, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %96
  %102 = load i32, i32* @TTY_FRAME, align 4
  store i32 %102, i32* %9, align 4
  br label %103

103:                                              ; preds = %101, %96
  br label %104

104:                                              ; preds = %103, %94
  br label %105

105:                                              ; preds = %104, %32
  %106 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* @RXSTAT_OVERRUN, align 4
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @uart_insert_char(%struct.uart_port* %106, i32 %107, i32 %108, i32 %109, i32 %110)
  %112 = load i32*, i32** @CSR_UARTFLG, align 8
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %7, align 4
  br label %22

114:                                              ; preds = %30
  %115 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %116 = call i32 @tty_flip_buffer_push(%struct.tty_struct* %115)
  %117 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %117
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @uart_insert_char(%struct.uart_port*, i32, i32, i32, i32) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
