; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_mxser.c_mxser_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_mxser.c_mxser_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.TYPE_4__*, %struct.mxser_port* }
%struct.TYPE_4__ = type { i32 }
%struct.mxser_port = type { i32, i32, i64, %struct.TYPE_6__*, %struct.TYPE_5__, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32*, i32 }

@ASYNC_INITIALIZED = common dso_local global i32 0, align 4
@UART_IER = common dso_local global i64 0, align 8
@HUPCL = common dso_local global i32 0, align 4
@UART_MCR_DTR = common dso_local global i32 0, align 4
@UART_MCR_RTS = common dso_local global i32 0, align 4
@UART_MCR = common dso_local global i64 0, align 8
@UART_FCR_CLEAR_RCVR = common dso_local global i32 0, align 4
@UART_FCR_CLEAR_XMIT = common dso_local global i32 0, align 4
@MOXA_MUST_FCR_GDA_MODE_ENABLE = common dso_local global i32 0, align 4
@UART_FCR = common dso_local global i64 0, align 8
@UART_RX = common dso_local global i64 0, align 8
@TTY_IO_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @mxser_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxser_shutdown(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.mxser_port*, align 8
  %4 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %5 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %6 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %5, i32 0, i32 2
  %7 = load %struct.mxser_port*, %struct.mxser_port** %6, align 8
  store %struct.mxser_port* %7, %struct.mxser_port** %3, align 8
  %8 = load %struct.mxser_port*, %struct.mxser_port** %3, align 8
  %9 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %8, i32 0, i32 4
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @ASYNC_INITIALIZED, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %138

16:                                               ; preds = %1
  %17 = load %struct.mxser_port*, %struct.mxser_port** %3, align 8
  %18 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %17, i32 0, i32 1
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.mxser_port*, %struct.mxser_port** %3, align 8
  %22 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  %24 = call i32 @wake_up_interruptible(i32* %23)
  %25 = load %struct.mxser_port*, %struct.mxser_port** %3, align 8
  %26 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %40

30:                                               ; preds = %16
  %31 = load %struct.mxser_port*, %struct.mxser_port** %3, align 8
  %32 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = ptrtoint i32* %34 to i64
  %36 = call i32 @free_page(i64 %35)
  %37 = load %struct.mxser_port*, %struct.mxser_port** %3, align 8
  %38 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  store i32* null, i32** %39, align 8
  br label %40

40:                                               ; preds = %30, %16
  %41 = load %struct.mxser_port*, %struct.mxser_port** %3, align 8
  %42 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %41, i32 0, i32 5
  store i64 0, i64* %42, align 8
  %43 = load %struct.mxser_port*, %struct.mxser_port** %3, align 8
  %44 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @UART_IER, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @outb(i32 0, i64 %47)
  %49 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %50 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @HUPCL, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %40
  %58 = load i32, i32* @UART_MCR_DTR, align 4
  %59 = load i32, i32* @UART_MCR_RTS, align 4
  %60 = or i32 %58, %59
  %61 = xor i32 %60, -1
  %62 = load %struct.mxser_port*, %struct.mxser_port** %3, align 8
  %63 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = and i32 %64, %61
  store i32 %65, i32* %63, align 8
  br label %66

66:                                               ; preds = %57, %40
  %67 = load %struct.mxser_port*, %struct.mxser_port** %3, align 8
  %68 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.mxser_port*, %struct.mxser_port** %3, align 8
  %71 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @UART_MCR, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @outb(i32 %69, i64 %74)
  %76 = load %struct.mxser_port*, %struct.mxser_port** %3, align 8
  %77 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %76, i32 0, i32 3
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %94

82:                                               ; preds = %66
  %83 = load i32, i32* @UART_FCR_CLEAR_RCVR, align 4
  %84 = load i32, i32* @UART_FCR_CLEAR_XMIT, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @MOXA_MUST_FCR_GDA_MODE_ENABLE, align 4
  %87 = or i32 %85, %86
  %88 = load %struct.mxser_port*, %struct.mxser_port** %3, align 8
  %89 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @UART_FCR, align 8
  %92 = add nsw i64 %90, %91
  %93 = call i32 @outb(i32 %87, i64 %92)
  br label %104

94:                                               ; preds = %66
  %95 = load i32, i32* @UART_FCR_CLEAR_RCVR, align 4
  %96 = load i32, i32* @UART_FCR_CLEAR_XMIT, align 4
  %97 = or i32 %95, %96
  %98 = load %struct.mxser_port*, %struct.mxser_port** %3, align 8
  %99 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @UART_FCR, align 8
  %102 = add nsw i64 %100, %101
  %103 = call i32 @outb(i32 %97, i64 %102)
  br label %104

104:                                              ; preds = %94, %82
  %105 = load %struct.mxser_port*, %struct.mxser_port** %3, align 8
  %106 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @UART_RX, align 8
  %109 = add nsw i64 %107, %108
  %110 = call i32 @inb(i64 %109)
  %111 = load i32, i32* @TTY_IO_ERROR, align 4
  %112 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %113 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %112, i32 0, i32 0
  %114 = call i32 @set_bit(i32 %111, i32* %113)
  %115 = load i32, i32* @ASYNC_INITIALIZED, align 4
  %116 = xor i32 %115, -1
  %117 = load %struct.mxser_port*, %struct.mxser_port** %3, align 8
  %118 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %117, i32 0, i32 4
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = and i32 %120, %116
  store i32 %121, i32* %119, align 8
  %122 = load %struct.mxser_port*, %struct.mxser_port** %3, align 8
  %123 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %122, i32 0, i32 3
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %104
  %129 = load %struct.mxser_port*, %struct.mxser_port** %3, align 8
  %130 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @SET_MOXA_MUST_NO_SOFTWARE_FLOW_CONTROL(i64 %131)
  br label %133

133:                                              ; preds = %128, %104
  %134 = load %struct.mxser_port*, %struct.mxser_port** %3, align 8
  %135 = getelementptr inbounds %struct.mxser_port, %struct.mxser_port* %134, i32 0, i32 1
  %136 = load i64, i64* %4, align 8
  %137 = call i32 @spin_unlock_irqrestore(i32* %135, i64 %136)
  br label %138

138:                                              ; preds = %133, %15
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @SET_MOXA_MUST_NO_SOFTWARE_FLOW_CONTROL(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
