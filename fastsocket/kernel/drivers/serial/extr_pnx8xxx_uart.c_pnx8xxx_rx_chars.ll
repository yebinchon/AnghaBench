; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_pnx8xxx_uart.c_pnx8xxx_rx_chars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_pnx8xxx_uart.c_pnx8xxx_rx_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnx8xxx_port = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i64, %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.tty_struct* }
%struct.tty_struct = type { i32 }

@PNX8XXX_FIFO = common dso_local global i32 0, align 4
@PNX8XXX_ISTAT = common dso_local global i32 0, align 4
@PNX8XXX_UART_FIFO_RXFIFO = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i32 0, align 4
@PNX8XXX_UART_FIFO_RXFE = common dso_local global i32 0, align 4
@PNX8XXX_UART_FIFO_RXPAR = common dso_local global i32 0, align 4
@PNX8XXX_UART_FIFO_RXBRK = common dso_local global i32 0, align 4
@PNX8XXX_UART_INT_RXOVRN = common dso_local global i32 0, align 4
@TTY_PARITY = common dso_local global i32 0, align 4
@TTY_FRAME = common dso_local global i32 0, align 4
@PNX8XXX_LCR = common dso_local global i32 0, align 4
@PNX8XXX_UART_LCR_RX_NEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pnx8xxx_port*)* @pnx8xxx_rx_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pnx8xxx_rx_chars(%struct.pnx8xxx_port* %0) #0 {
  %2 = alloca %struct.pnx8xxx_port*, align 8
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pnx8xxx_port* %0, %struct.pnx8xxx_port** %2, align 8
  %7 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %2, align 8
  %8 = getelementptr inbounds %struct.pnx8xxx_port, %struct.pnx8xxx_port* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 3
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load %struct.tty_struct*, %struct.tty_struct** %12, align 8
  store %struct.tty_struct* %13, %struct.tty_struct** %3, align 8
  %14 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %2, align 8
  %15 = load i32, i32* @PNX8XXX_FIFO, align 4
  %16 = call i32 @serial_in(%struct.pnx8xxx_port* %14, i32 %15)
  %17 = call i32 @FIFO_TO_SM(i32 %16)
  %18 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %2, align 8
  %19 = load i32, i32* @PNX8XXX_ISTAT, align 4
  %20 = call i32 @serial_in(%struct.pnx8xxx_port* %18, i32 %19)
  %21 = call i32 @ISTAT_TO_SM(i32 %20)
  %22 = or i32 %17, %21
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %161, %1
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @PNX8XXX_UART_FIFO_RXFIFO, align 4
  %26 = call i32 @FIFO_TO_SM(i32 %25)
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %179

29:                                               ; preds = %23
  %30 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %2, align 8
  %31 = load i32, i32* @PNX8XXX_FIFO, align 4
  %32 = call i32 @serial_in(%struct.pnx8xxx_port* %30, i32 %31)
  %33 = and i32 %32, 255
  store i32 %33, i32* %5, align 4
  %34 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %2, align 8
  %35 = getelementptr inbounds %struct.pnx8xxx_port, %struct.pnx8xxx_port* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 8
  %40 = load i32, i32* @TTY_NORMAL, align 4
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @PNX8XXX_UART_FIFO_RXFE, align 4
  %43 = load i32, i32* @PNX8XXX_UART_FIFO_RXPAR, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @PNX8XXX_UART_FIFO_RXBRK, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @FIFO_TO_SM(i32 %46)
  %48 = load i32, i32* @PNX8XXX_UART_INT_RXOVRN, align 4
  %49 = call i32 @ISTAT_TO_SM(i32 %48)
  %50 = or i32 %47, %49
  %51 = and i32 %41, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %145

53:                                               ; preds = %29
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @PNX8XXX_UART_FIFO_RXBRK, align 4
  %56 = call i32 @FIFO_TO_SM(i32 %55)
  %57 = and i32 %54, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %80

59:                                               ; preds = %53
  %60 = load i32, i32* @PNX8XXX_UART_FIFO_RXFE, align 4
  %61 = call i32 @FIFO_TO_SM(i32 %60)
  %62 = load i32, i32* @PNX8XXX_UART_FIFO_RXPAR, align 4
  %63 = call i32 @FIFO_TO_SM(i32 %62)
  %64 = or i32 %61, %63
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %4, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %4, align 4
  %68 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %2, align 8
  %69 = getelementptr inbounds %struct.pnx8xxx_port, %struct.pnx8xxx_port* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  %74 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %2, align 8
  %75 = getelementptr inbounds %struct.pnx8xxx_port, %struct.pnx8xxx_port* %74, i32 0, i32 0
  %76 = call i64 @uart_handle_break(%struct.TYPE_10__* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %59
  br label %161

79:                                               ; preds = %59
  br label %108

80:                                               ; preds = %53
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* @PNX8XXX_UART_FIFO_RXPAR, align 4
  %83 = call i32 @FIFO_TO_SM(i32 %82)
  %84 = and i32 %81, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %80
  %87 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %2, align 8
  %88 = getelementptr inbounds %struct.pnx8xxx_port, %struct.pnx8xxx_port* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 8
  br label %107

93:                                               ; preds = %80
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* @PNX8XXX_UART_FIFO_RXFE, align 4
  %96 = call i32 @FIFO_TO_SM(i32 %95)
  %97 = and i32 %94, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %93
  %100 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %2, align 8
  %101 = getelementptr inbounds %struct.pnx8xxx_port, %struct.pnx8xxx_port* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %99, %93
  br label %107

107:                                              ; preds = %106, %86
  br label %108

108:                                              ; preds = %107, %79
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* @PNX8XXX_UART_INT_RXOVRN, align 4
  %111 = call i32 @ISTAT_TO_SM(i32 %110)
  %112 = and i32 %109, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %108
  %115 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %2, align 8
  %116 = getelementptr inbounds %struct.pnx8xxx_port, %struct.pnx8xxx_port* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %118, align 8
  br label %121

121:                                              ; preds = %114, %108
  %122 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %2, align 8
  %123 = getelementptr inbounds %struct.pnx8xxx_port, %struct.pnx8xxx_port* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* %4, align 4
  %127 = and i32 %126, %125
  store i32 %127, i32* %4, align 4
  %128 = load i32, i32* %4, align 4
  %129 = load i32, i32* @PNX8XXX_UART_FIFO_RXPAR, align 4
  %130 = call i32 @FIFO_TO_SM(i32 %129)
  %131 = and i32 %128, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %121
  %134 = load i32, i32* @TTY_PARITY, align 4
  store i32 %134, i32* %6, align 4
  br label %144

135:                                              ; preds = %121
  %136 = load i32, i32* %4, align 4
  %137 = load i32, i32* @PNX8XXX_UART_FIFO_RXFE, align 4
  %138 = call i32 @FIFO_TO_SM(i32 %137)
  %139 = and i32 %136, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %135
  %142 = load i32, i32* @TTY_FRAME, align 4
  store i32 %142, i32* %6, align 4
  br label %143

143:                                              ; preds = %141, %135
  br label %144

144:                                              ; preds = %143, %133
  br label %145

145:                                              ; preds = %144, %29
  %146 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %2, align 8
  %147 = getelementptr inbounds %struct.pnx8xxx_port, %struct.pnx8xxx_port* %146, i32 0, i32 0
  %148 = load i32, i32* %5, align 4
  %149 = call i64 @uart_handle_sysrq_char(%struct.TYPE_10__* %147, i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %145
  br label %161

152:                                              ; preds = %145
  %153 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %2, align 8
  %154 = getelementptr inbounds %struct.pnx8xxx_port, %struct.pnx8xxx_port* %153, i32 0, i32 0
  %155 = load i32, i32* %4, align 4
  %156 = load i32, i32* @PNX8XXX_UART_INT_RXOVRN, align 4
  %157 = call i32 @ISTAT_TO_SM(i32 %156)
  %158 = load i32, i32* %5, align 4
  %159 = load i32, i32* %6, align 4
  %160 = call i32 @uart_insert_char(%struct.TYPE_10__* %154, i32 %155, i32 %157, i32 %158, i32 %159)
  br label %161

161:                                              ; preds = %152, %151, %78
  %162 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %2, align 8
  %163 = load i32, i32* @PNX8XXX_LCR, align 4
  %164 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %2, align 8
  %165 = load i32, i32* @PNX8XXX_LCR, align 4
  %166 = call i32 @serial_in(%struct.pnx8xxx_port* %164, i32 %165)
  %167 = load i32, i32* @PNX8XXX_UART_LCR_RX_NEXT, align 4
  %168 = or i32 %166, %167
  %169 = call i32 @serial_out(%struct.pnx8xxx_port* %162, i32 %163, i32 %168)
  %170 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %2, align 8
  %171 = load i32, i32* @PNX8XXX_FIFO, align 4
  %172 = call i32 @serial_in(%struct.pnx8xxx_port* %170, i32 %171)
  %173 = call i32 @FIFO_TO_SM(i32 %172)
  %174 = load %struct.pnx8xxx_port*, %struct.pnx8xxx_port** %2, align 8
  %175 = load i32, i32* @PNX8XXX_ISTAT, align 4
  %176 = call i32 @serial_in(%struct.pnx8xxx_port* %174, i32 %175)
  %177 = call i32 @ISTAT_TO_SM(i32 %176)
  %178 = or i32 %173, %177
  store i32 %178, i32* %4, align 4
  br label %23

179:                                              ; preds = %23
  %180 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %181 = call i32 @tty_flip_buffer_push(%struct.tty_struct* %180)
  ret void
}

declare dso_local i32 @FIFO_TO_SM(i32) #1

declare dso_local i32 @serial_in(%struct.pnx8xxx_port*, i32) #1

declare dso_local i32 @ISTAT_TO_SM(i32) #1

declare dso_local i64 @uart_handle_break(%struct.TYPE_10__*) #1

declare dso_local i64 @uart_handle_sysrq_char(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @uart_insert_char(%struct.TYPE_10__*, i32, i32, i32, i32) #1

declare dso_local i32 @serial_out(%struct.pnx8xxx_port*, i32, i32) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
