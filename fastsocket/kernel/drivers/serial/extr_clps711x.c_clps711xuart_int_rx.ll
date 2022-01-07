; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_clps711x.c_clps711xuart_int_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_clps711x.c_clps711xuart_int_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i64, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.tty_struct* }
%struct.tty_struct = type { i32 }

@SYSFLG_URXFE = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i32 0, align 4
@UART_ANY_ERR = common dso_local global i32 0, align 4
@UARTDR_PARERR = common dso_local global i32 0, align 4
@UARTDR_FRMERR = common dso_local global i32 0, align 4
@UARTDR_OVERR = common dso_local global i32 0, align 4
@TTY_PARITY = common dso_local global i32 0, align 4
@TTY_FRAME = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @clps711xuart_int_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clps711xuart_int_rx(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.uart_port*, align 8
  %6 = alloca %struct.tty_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.uart_port*
  store %struct.uart_port* %11, %struct.uart_port** %5, align 8
  %12 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %13 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %12, i32 0, i32 3
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.tty_struct*, %struct.tty_struct** %16, align 8
  store %struct.tty_struct* %17, %struct.tty_struct** %6, align 8
  %18 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %19 = call i32 @SYSFLG(%struct.uart_port* %18)
  %20 = call i32 @clps_readl(i32 %19)
  store i32 %20, i32* %7, align 4
  br label %21

21:                                               ; preds = %110, %2
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @SYSFLG_URXFE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  br i1 %26, label %27, label %114

27:                                               ; preds = %21
  %28 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %29 = call i32 @UARTDR(%struct.uart_port* %28)
  %30 = call i32 @clps_readl(i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %32 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* @TTY_NORMAL, align 4
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @UART_ANY_ERR, align 4
  %39 = and i32 %37, %38
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %97

42:                                               ; preds = %27
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @UARTDR_PARERR, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %49 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 8
  br label %65

53:                                               ; preds = %42
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @UARTDR_FRMERR, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %60 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %58, %53
  br label %65

65:                                               ; preds = %64, %47
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @UARTDR_OVERR, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %72 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %70, %65
  %77 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %78 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @UARTDR_PARERR, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %76
  %87 = load i32, i32* @TTY_PARITY, align 4
  store i32 %87, i32* %9, align 4
  br label %96

88:                                               ; preds = %76
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* @UARTDR_FRMERR, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %88
  %94 = load i32, i32* @TTY_FRAME, align 4
  store i32 %94, i32* %9, align 4
  br label %95

95:                                               ; preds = %93, %88
  br label %96

96:                                               ; preds = %95, %86
  br label %97

97:                                               ; preds = %96, %27
  %98 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %99 = load i32, i32* %8, align 4
  %100 = call i64 @uart_handle_sysrq_char(%struct.uart_port* %98, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  br label %110

103:                                              ; preds = %97
  %104 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* @UARTDR_OVERR, align 4
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @uart_insert_char(%struct.uart_port* %104, i32 %105, i32 %106, i32 %107, i32 %108)
  br label %110

110:                                              ; preds = %103, %102
  %111 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %112 = call i32 @SYSFLG(%struct.uart_port* %111)
  %113 = call i32 @clps_readl(i32 %112)
  store i32 %113, i32* %7, align 4
  br label %21

114:                                              ; preds = %21
  %115 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %116 = call i32 @tty_flip_buffer_push(%struct.tty_struct* %115)
  %117 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %117
}

declare dso_local i32 @clps_readl(i32) #1

declare dso_local i32 @SYSFLG(%struct.uart_port*) #1

declare dso_local i32 @UARTDR(%struct.uart_port*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @uart_handle_sysrq_char(%struct.uart_port*, i32) #1

declare dso_local i32 @uart_insert_char(%struct.uart_port*, i32, i32, i32, i32) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
