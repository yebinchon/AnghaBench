; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_bcm63xx_uart.c_bcm_uart_do_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_bcm63xx_uart.c_bcm_uart_do_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.tty_struct* }
%struct.tty_struct = type { i32 }

@UART_IR_REG = common dso_local global i32 0, align 4
@UART_IR_RXNOTEMPTY = common dso_local global i32 0, align 4
@UART_FIFO_REG = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i8 0, align 1
@UART_FIFO_ANYERR_MASK = common dso_local global i32 0, align 4
@UART_FIFO_BRKDET_MASK = common dso_local global i32 0, align 4
@UART_FIFO_PARERR_MASK = common dso_local global i32 0, align 4
@UART_FIFO_FRAMEERR_MASK = common dso_local global i32 0, align 4
@TTY_BREAK = common dso_local global i8 0, align 1
@TTY_FRAME = common dso_local global i8 0, align 1
@TTY_PARITY = common dso_local global i8 0, align 1
@UART_IR_RXOVER = common dso_local global i32 0, align 4
@TTY_OVERRUN = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @bcm_uart_do_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_uart_do_rx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  store i32 32, i32* %4, align 4
  %9 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %10 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %9, i32 0, i32 3
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.tty_struct*, %struct.tty_struct** %13, align 8
  store %struct.tty_struct* %14, %struct.tty_struct** %3, align 8
  br label %15

15:                                               ; preds = %142, %1
  %16 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %17 = load i32, i32* @UART_IR_REG, align 4
  %18 = call i32 @bcm_uart_readl(%struct.uart_port* %16, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @UART_IR_RXNOTEMPTY, align 4
  %21 = call i32 @UART_IR_STAT(i32 %20)
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %15
  br label %146

25:                                               ; preds = %15
  %26 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %27 = load i32, i32* @UART_FIFO_REG, align 4
  %28 = call i32 @bcm_uart_readl(%struct.uart_port* %26, i32 %27)
  store i32 %28, i32* %6, align 4
  store i32 %28, i32* %7, align 4
  %29 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %30 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 8
  %34 = load i8, i8* @TTY_NORMAL, align 1
  store i8 %34, i8* %8, align 1
  %35 = load i32, i32* %6, align 4
  %36 = and i32 %35, 255
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @UART_FIFO_ANYERR_MASK, align 4
  %39 = and i32 %37, %38
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %107

42:                                               ; preds = %25
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @UART_FIFO_BRKDET_MASK, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %42
  %48 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %49 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  %53 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %54 = call i64 @uart_handle_break(%struct.uart_port* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  br label %142

57:                                               ; preds = %47
  br label %58

58:                                               ; preds = %57, %42
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @UART_FIFO_PARERR_MASK, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %65 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 8
  br label %69

69:                                               ; preds = %63, %58
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @UART_FIFO_FRAMEERR_MASK, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %76 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %74, %69
  %81 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %82 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = and i32 %84, %83
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @UART_FIFO_BRKDET_MASK, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %80
  %91 = load i8, i8* @TTY_BREAK, align 1
  store i8 %91, i8* %8, align 1
  br label %92

92:                                               ; preds = %90, %80
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @UART_FIFO_FRAMEERR_MASK, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = load i8, i8* @TTY_FRAME, align 1
  store i8 %98, i8* %8, align 1
  br label %99

99:                                               ; preds = %97, %92
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* @UART_FIFO_PARERR_MASK, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %99
  %105 = load i8, i8* @TTY_PARITY, align 1
  store i8 %105, i8* %8, align 1
  br label %106

106:                                              ; preds = %104, %99
  br label %107

107:                                              ; preds = %106, %25
  %108 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %109 = load i32, i32* %6, align 4
  %110 = call i64 @uart_handle_sysrq_char(%struct.uart_port* %108, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  br label %142

113:                                              ; preds = %107
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* @UART_IR_RXOVER, align 4
  %116 = call i32 @UART_IR_STAT(i32 %115)
  %117 = and i32 %114, %116
  %118 = call i64 @unlikely(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %113
  %121 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %122 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %123, align 8
  %126 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %127 = load i8, i8* @TTY_OVERRUN, align 1
  %128 = call i32 @tty_insert_flip_char(%struct.tty_struct* %126, i32 0, i8 signext %127)
  br label %129

129:                                              ; preds = %120, %113
  %130 = load i32, i32* %7, align 4
  %131 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %132 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = and i32 %130, %133
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %129
  %137 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %138 = load i32, i32* %6, align 4
  %139 = load i8, i8* %8, align 1
  %140 = call i32 @tty_insert_flip_char(%struct.tty_struct* %137, i32 %138, i8 signext %139)
  br label %141

141:                                              ; preds = %136, %129
  br label %142

142:                                              ; preds = %141, %112, %56
  %143 = load i32, i32* %4, align 4
  %144 = add i32 %143, -1
  store i32 %144, i32* %4, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %15, label %146

146:                                              ; preds = %142, %24
  %147 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %148 = call i32 @tty_flip_buffer_push(%struct.tty_struct* %147)
  ret void
}

declare dso_local i32 @bcm_uart_readl(%struct.uart_port*, i32) #1

declare dso_local i32 @UART_IR_STAT(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @uart_handle_break(%struct.uart_port*) #1

declare dso_local i64 @uart_handle_sysrq_char(%struct.uart_port*, i32) #1

declare dso_local i32 @tty_insert_flip_char(%struct.tty_struct*, i32, i8 signext) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
