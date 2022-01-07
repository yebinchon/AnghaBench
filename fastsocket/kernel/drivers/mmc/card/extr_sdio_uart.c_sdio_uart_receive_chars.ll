; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/card/extr_sdio_uart.c_sdio_uart_receive_chars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/card/extr_sdio_uart.c_sdio_uart_receive_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_uart_port = type { i32, i32, %struct.TYPE_2__, %struct.tty_struct* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.tty_struct = type { i32 }

@UART_RX = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i32 0, align 4
@UART_LSR_BI = common dso_local global i32 0, align 4
@UART_LSR_PE = common dso_local global i32 0, align 4
@UART_LSR_FE = common dso_local global i32 0, align 4
@UART_LSR_OE = common dso_local global i32 0, align 4
@TTY_BREAK = common dso_local global i32 0, align 4
@TTY_PARITY = common dso_local global i32 0, align 4
@TTY_FRAME = common dso_local global i32 0, align 4
@TTY_OVERRUN = common dso_local global i32 0, align 4
@UART_LSR = common dso_local global i32 0, align 4
@UART_LSR_DR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdio_uart_port*, i32*)* @sdio_uart_receive_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdio_uart_receive_chars(%struct.sdio_uart_port* %0, i32* %1) #0 {
  %3 = alloca %struct.sdio_uart_port*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sdio_uart_port* %0, %struct.sdio_uart_port** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %10 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %9, i32 0, i32 3
  %11 = load %struct.tty_struct*, %struct.tty_struct** %10, align 8
  store %struct.tty_struct* %11, %struct.tty_struct** %5, align 8
  store i32 256, i32* %8, align 4
  br label %12

12:                                               ; preds = %170, %2
  %13 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %14 = load i32, i32* @UART_RX, align 4
  %15 = call i32 @sdio_in(%struct.sdio_uart_port* %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* @TTY_NORMAL, align 4
  store i32 %16, i32* %7, align 4
  %17 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %18 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @UART_LSR_BI, align 4
  %25 = load i32, i32* @UART_LSR_PE, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @UART_LSR_FE, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @UART_LSR_OE, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %23, %30
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %124

34:                                               ; preds = %12
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @UART_LSR_BI, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %34
  %41 = load i32, i32* @UART_LSR_FE, align 4
  %42 = load i32, i32* @UART_LSR_PE, align 4
  %43 = or i32 %41, %42
  %44 = xor i32 %43, -1
  %45 = load i32*, i32** %4, align 8
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, %44
  store i32 %47, i32* %45, align 4
  %48 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %49 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  br label %79

53:                                               ; preds = %34
  %54 = load i32*, i32** %4, align 8
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @UART_LSR_PE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %61 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 8
  br label %78

65:                                               ; preds = %53
  %66 = load i32*, i32** %4, align 8
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @UART_LSR_FE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %65
  %72 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %73 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %71, %65
  br label %78

78:                                               ; preds = %77, %59
  br label %79

79:                                               ; preds = %78, %40
  %80 = load i32*, i32** %4, align 8
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @UART_LSR_OE, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %79
  %86 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %87 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 8
  br label %91

91:                                               ; preds = %85, %79
  %92 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %93 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32*, i32** %4, align 8
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, %94
  store i32 %97, i32* %95, align 4
  %98 = load i32*, i32** %4, align 8
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @UART_LSR_BI, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %91
  %104 = load i32, i32* @TTY_BREAK, align 4
  store i32 %104, i32* %7, align 4
  br label %123

105:                                              ; preds = %91
  %106 = load i32*, i32** %4, align 8
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @UART_LSR_PE, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %105
  %112 = load i32, i32* @TTY_PARITY, align 4
  store i32 %112, i32* %7, align 4
  br label %122

113:                                              ; preds = %105
  %114 = load i32*, i32** %4, align 8
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @UART_LSR_FE, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %113
  %120 = load i32, i32* @TTY_FRAME, align 4
  store i32 %120, i32* %7, align 4
  br label %121

121:                                              ; preds = %119, %113
  br label %122

122:                                              ; preds = %121, %111
  br label %123

123:                                              ; preds = %122, %103
  br label %124

124:                                              ; preds = %123, %12
  %125 = load i32*, i32** %4, align 8
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %128 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = and i32 %126, %129
  %131 = load i32, i32* @UART_LSR_OE, align 4
  %132 = xor i32 %131, -1
  %133 = and i32 %130, %132
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %124
  %136 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %137 = load i32, i32* %6, align 4
  %138 = load i32, i32* %7, align 4
  %139 = call i32 @tty_insert_flip_char(%struct.tty_struct* %136, i32 %137, i32 %138)
  br label %140

140:                                              ; preds = %135, %124
  %141 = load i32*, i32** %4, align 8
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %144 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = xor i32 %145, -1
  %147 = and i32 %142, %146
  %148 = load i32, i32* @UART_LSR_OE, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %140
  %152 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %153 = load i32, i32* @TTY_OVERRUN, align 4
  %154 = call i32 @tty_insert_flip_char(%struct.tty_struct* %152, i32 0, i32 %153)
  br label %155

155:                                              ; preds = %151, %140
  %156 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %157 = load i32, i32* @UART_LSR, align 4
  %158 = call i32 @sdio_in(%struct.sdio_uart_port* %156, i32 %157)
  %159 = load i32*, i32** %4, align 8
  store i32 %158, i32* %159, align 4
  br label %160

160:                                              ; preds = %155
  %161 = load i32*, i32** %4, align 8
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @UART_LSR_DR, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %160
  %167 = load i32, i32* %8, align 4
  %168 = add nsw i32 %167, -1
  store i32 %168, i32* %8, align 4
  %169 = icmp sgt i32 %167, 0
  br label %170

170:                                              ; preds = %166, %160
  %171 = phi i1 [ false, %160 ], [ %169, %166 ]
  br i1 %171, label %12, label %172

172:                                              ; preds = %170
  %173 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %174 = call i32 @tty_flip_buffer_push(%struct.tty_struct* %173)
  ret void
}

declare dso_local i32 @sdio_in(%struct.sdio_uart_port*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @tty_insert_flip_char(%struct.tty_struct*, i32, i32) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
