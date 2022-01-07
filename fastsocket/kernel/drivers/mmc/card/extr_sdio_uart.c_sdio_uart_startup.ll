; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/card/extr_sdio_uart.c_sdio_uart_startup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/card/extr_sdio_uart.c_sdio_uart_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_uart_port = type { i32, %struct.TYPE_6__, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@TTY_IO_ERROR = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UART_FCR = common dso_local global i32 0, align 4
@UART_FCR_ENABLE_FIFO = common dso_local global i32 0, align 4
@UART_FCR_CLEAR_RCVR = common dso_local global i32 0, align 4
@UART_FCR_CLEAR_XMIT = common dso_local global i32 0, align 4
@UART_LSR = common dso_local global i32 0, align 4
@UART_RX = common dso_local global i32 0, align 4
@UART_IIR = common dso_local global i32 0, align 4
@UART_MSR = common dso_local global i32 0, align 4
@UART_LCR = common dso_local global i32 0, align 4
@UART_LCR_WLEN8 = common dso_local global i32 0, align 4
@UART_IER_RLSI = common dso_local global i32 0, align 4
@UART_IER_RDI = common dso_local global i32 0, align 4
@UART_IER_RTOIE = common dso_local global i32 0, align 4
@UART_IER_UUE = common dso_local global i32 0, align 4
@TIOCM_OUT2 = common dso_local global i32 0, align 4
@CBAUD = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@CRTSCTS = common dso_local global i32 0, align 4
@TIOCM_CTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdio_uart_port*)* @sdio_uart_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdio_uart_startup(%struct.sdio_uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sdio_uart_port*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.sdio_uart_port* %0, %struct.sdio_uart_port** %3, align 8
  %6 = load i32, i32* @TTY_IO_ERROR, align 4
  %7 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %8 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %7, i32 0, i32 3
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = call i32 @set_bit(i32 %6, i32* %10)
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i64 @__get_free_page(i32 %12)
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %4, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %168

19:                                               ; preds = %1
  %20 = load i64, i64* %4, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %23 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store i8* %21, i8** %24, align 8
  %25 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %26 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %25, i32 0, i32 1
  %27 = call i32 @circ_clear(%struct.TYPE_6__* %26)
  %28 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %29 = call i32 @sdio_uart_claim_func(%struct.sdio_uart_port* %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %19
  br label %160

33:                                               ; preds = %19
  %34 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %35 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @sdio_enable_func(i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %157

41:                                               ; preds = %33
  %42 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %43 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @sdio_claim_irq(i32 %44, i32 (i32)* @sdio_uart_irq)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %152

49:                                               ; preds = %41
  %50 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %51 = load i32, i32* @UART_FCR, align 4
  %52 = load i32, i32* @UART_FCR_ENABLE_FIFO, align 4
  %53 = call i32 @sdio_out(%struct.sdio_uart_port* %50, i32 %51, i32 %52)
  %54 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %55 = load i32, i32* @UART_FCR, align 4
  %56 = load i32, i32* @UART_FCR_ENABLE_FIFO, align 4
  %57 = load i32, i32* @UART_FCR_CLEAR_RCVR, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @UART_FCR_CLEAR_XMIT, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @sdio_out(%struct.sdio_uart_port* %54, i32 %55, i32 %60)
  %62 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %63 = load i32, i32* @UART_FCR, align 4
  %64 = call i32 @sdio_out(%struct.sdio_uart_port* %62, i32 %63, i32 0)
  %65 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %66 = load i32, i32* @UART_LSR, align 4
  %67 = call i32 @sdio_in(%struct.sdio_uart_port* %65, i32 %66)
  %68 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %69 = load i32, i32* @UART_RX, align 4
  %70 = call i32 @sdio_in(%struct.sdio_uart_port* %68, i32 %69)
  %71 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %72 = load i32, i32* @UART_IIR, align 4
  %73 = call i32 @sdio_in(%struct.sdio_uart_port* %71, i32 %72)
  %74 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %75 = load i32, i32* @UART_MSR, align 4
  %76 = call i32 @sdio_in(%struct.sdio_uart_port* %74, i32 %75)
  %77 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %78 = load i32, i32* @UART_LCR, align 4
  %79 = load i32, i32* @UART_LCR_WLEN8, align 4
  %80 = call i32 @sdio_out(%struct.sdio_uart_port* %77, i32 %78, i32 %79)
  %81 = load i32, i32* @UART_IER_RLSI, align 4
  %82 = load i32, i32* @UART_IER_RDI, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @UART_IER_RTOIE, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @UART_IER_UUE, align 4
  %87 = or i32 %85, %86
  %88 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %89 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load i32, i32* @TIOCM_OUT2, align 4
  %91 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %92 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %91, i32 0, i32 4
  store i32 %90, i32* %92, align 8
  %93 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %94 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %95 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %94, i32 0, i32 3
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = call i32 @sdio_uart_change_speed(%struct.sdio_uart_port* %93, %struct.TYPE_5__* %98, i32* null)
  %100 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %101 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %100, i32 0, i32 3
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 2
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @CBAUD, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %49
  %111 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %112 = load i32, i32* @TIOCM_RTS, align 4
  %113 = load i32, i32* @TIOCM_DTR, align 4
  %114 = or i32 %112, %113
  %115 = call i32 @sdio_uart_set_mctrl(%struct.sdio_uart_port* %111, i32 %114)
  br label %116

116:                                              ; preds = %110, %49
  %117 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %118 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %117, i32 0, i32 3
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 2
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @CRTSCTS, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %139

127:                                              ; preds = %116
  %128 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %129 = call i32 @sdio_uart_get_mctrl(%struct.sdio_uart_port* %128)
  %130 = load i32, i32* @TIOCM_CTS, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %138, label %133

133:                                              ; preds = %127
  %134 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %135 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %134, i32 0, i32 3
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  store i32 1, i32* %137, align 8
  br label %138

138:                                              ; preds = %133, %127
  br label %139

139:                                              ; preds = %138, %116
  %140 = load i32, i32* @TTY_IO_ERROR, align 4
  %141 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %142 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %141, i32 0, i32 3
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 1
  %145 = call i32 @clear_bit(i32 %140, i32* %144)
  %146 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %147 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @sdio_uart_irq(i32 %148)
  %150 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %151 = call i32 @sdio_uart_release_func(%struct.sdio_uart_port* %150)
  store i32 0, i32* %2, align 4
  br label %168

152:                                              ; preds = %48
  %153 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %154 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @sdio_disable_func(i32 %155)
  br label %157

157:                                              ; preds = %152, %40
  %158 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %159 = call i32 @sdio_uart_release_func(%struct.sdio_uart_port* %158)
  br label %160

160:                                              ; preds = %157, %32
  %161 = load %struct.sdio_uart_port*, %struct.sdio_uart_port** %3, align 8
  %162 = getelementptr inbounds %struct.sdio_uart_port, %struct.sdio_uart_port* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = load i8*, i8** %163, align 8
  %165 = ptrtoint i8* %164 to i64
  %166 = call i32 @free_page(i64 %165)
  %167 = load i32, i32* %5, align 4
  store i32 %167, i32* %2, align 4
  br label %168

168:                                              ; preds = %160, %139, %16
  %169 = load i32, i32* %2, align 4
  ret i32 %169
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @__get_free_page(i32) #1

declare dso_local i32 @circ_clear(%struct.TYPE_6__*) #1

declare dso_local i32 @sdio_uart_claim_func(%struct.sdio_uart_port*) #1

declare dso_local i32 @sdio_enable_func(i32) #1

declare dso_local i32 @sdio_claim_irq(i32, i32 (i32)*) #1

declare dso_local i32 @sdio_uart_irq(i32) #1

declare dso_local i32 @sdio_out(%struct.sdio_uart_port*, i32, i32) #1

declare dso_local i32 @sdio_in(%struct.sdio_uart_port*, i32) #1

declare dso_local i32 @sdio_uart_change_speed(%struct.sdio_uart_port*, %struct.TYPE_5__*, i32*) #1

declare dso_local i32 @sdio_uart_set_mctrl(%struct.sdio_uart_port*, i32) #1

declare dso_local i32 @sdio_uart_get_mctrl(%struct.sdio_uart_port*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @sdio_uart_release_func(%struct.sdio_uart_port*) #1

declare dso_local i32 @sdio_disable_func(i32) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
