; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_8250.c_autoconfig_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_8250.c_autoconfig_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_8250_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@UPF_FOURPORT = common dso_local global i32 0, align 4
@UART_MCR = common dso_local global i32 0, align 4
@UART_IER = common dso_local global i32 0, align 4
@UART_MCR_OUT1 = common dso_local global i8 0, align 1
@UART_MCR_OUT2 = common dso_local global i8 0, align 1
@UART_MCR_DTR = common dso_local global i8 0, align 1
@UART_MCR_RTS = common dso_local global i8 0, align 1
@UART_LSR = common dso_local global i32 0, align 4
@UART_RX = common dso_local global i32 0, align 4
@UART_IIR = common dso_local global i32 0, align 4
@UART_MSR = common dso_local global i32 0, align 4
@UART_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_8250_port*)* @autoconfig_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @autoconfig_irq(%struct.uart_8250_port* %0) #0 {
  %2 = alloca %struct.uart_8250_port*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.uart_8250_port* %0, %struct.uart_8250_port** %2, align 8
  store i8 0, i8* %5, align 1
  store i32 0, i32* %6, align 4
  %9 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %10 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @UPF_FOURPORT, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %1
  %17 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %18 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 4064
  %22 = or i32 %21, 31
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call zeroext i8 @inb_p(i32 %23)
  store i8 %24, i8* %5, align 1
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @outb_p(i8 zeroext -128, i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = call zeroext i8 @inb_p(i32 %27)
  br label %29

29:                                               ; preds = %16, %1
  %30 = call i64 (...) @probe_irq_on()
  %31 = call i32 @probe_irq_off(i64 %30)
  %32 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %33 = load i32, i32* @UART_MCR, align 4
  %34 = call zeroext i8 @serial_inp(%struct.uart_8250_port* %32, i32 %33)
  store i8 %34, i8* %3, align 1
  %35 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %36 = load i32, i32* @UART_IER, align 4
  %37 = call zeroext i8 @serial_inp(%struct.uart_8250_port* %35, i32 %36)
  store i8 %37, i8* %4, align 1
  %38 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %39 = load i32, i32* @UART_MCR, align 4
  %40 = load i8, i8* @UART_MCR_OUT1, align 1
  %41 = zext i8 %40 to i32
  %42 = load i8, i8* @UART_MCR_OUT2, align 1
  %43 = zext i8 %42 to i32
  %44 = or i32 %41, %43
  %45 = trunc i32 %44 to i8
  %46 = call i32 @serial_outp(%struct.uart_8250_port* %38, i32 %39, i8 zeroext %45)
  %47 = call i64 (...) @probe_irq_on()
  store i64 %47, i64* %7, align 8
  %48 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %49 = load i32, i32* @UART_MCR, align 4
  %50 = call i32 @serial_outp(%struct.uart_8250_port* %48, i32 %49, i8 zeroext 0)
  %51 = call i32 @udelay(i32 10)
  %52 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %53 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @UPF_FOURPORT, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %29
  %60 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %61 = load i32, i32* @UART_MCR, align 4
  %62 = load i8, i8* @UART_MCR_DTR, align 1
  %63 = zext i8 %62 to i32
  %64 = load i8, i8* @UART_MCR_RTS, align 1
  %65 = zext i8 %64 to i32
  %66 = or i32 %63, %65
  %67 = trunc i32 %66 to i8
  %68 = call i32 @serial_outp(%struct.uart_8250_port* %60, i32 %61, i8 zeroext %67)
  br label %82

69:                                               ; preds = %29
  %70 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %71 = load i32, i32* @UART_MCR, align 4
  %72 = load i8, i8* @UART_MCR_DTR, align 1
  %73 = zext i8 %72 to i32
  %74 = load i8, i8* @UART_MCR_RTS, align 1
  %75 = zext i8 %74 to i32
  %76 = or i32 %73, %75
  %77 = load i8, i8* @UART_MCR_OUT2, align 1
  %78 = zext i8 %77 to i32
  %79 = or i32 %76, %78
  %80 = trunc i32 %79 to i8
  %81 = call i32 @serial_outp(%struct.uart_8250_port* %70, i32 %71, i8 zeroext %80)
  br label %82

82:                                               ; preds = %69, %59
  %83 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %84 = load i32, i32* @UART_IER, align 4
  %85 = call i32 @serial_outp(%struct.uart_8250_port* %83, i32 %84, i8 zeroext 15)
  %86 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %87 = load i32, i32* @UART_LSR, align 4
  %88 = call zeroext i8 @serial_inp(%struct.uart_8250_port* %86, i32 %87)
  %89 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %90 = load i32, i32* @UART_RX, align 4
  %91 = call zeroext i8 @serial_inp(%struct.uart_8250_port* %89, i32 %90)
  %92 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %93 = load i32, i32* @UART_IIR, align 4
  %94 = call zeroext i8 @serial_inp(%struct.uart_8250_port* %92, i32 %93)
  %95 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %96 = load i32, i32* @UART_MSR, align 4
  %97 = call zeroext i8 @serial_inp(%struct.uart_8250_port* %95, i32 %96)
  %98 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %99 = load i32, i32* @UART_TX, align 4
  %100 = call i32 @serial_outp(%struct.uart_8250_port* %98, i32 %99, i8 zeroext -1)
  %101 = call i32 @udelay(i32 20)
  %102 = load i64, i64* %7, align 8
  %103 = call i32 @probe_irq_off(i64 %102)
  store i32 %103, i32* %8, align 4
  %104 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %105 = load i32, i32* @UART_MCR, align 4
  %106 = load i8, i8* %3, align 1
  %107 = call i32 @serial_outp(%struct.uart_8250_port* %104, i32 %105, i8 zeroext %106)
  %108 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %109 = load i32, i32* @UART_IER, align 4
  %110 = load i8, i8* %4, align 1
  %111 = call i32 @serial_outp(%struct.uart_8250_port* %108, i32 %109, i8 zeroext %110)
  %112 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %113 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @UPF_FOURPORT, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %82
  %120 = load i8, i8* %5, align 1
  %121 = load i32, i32* %6, align 4
  %122 = call i32 @outb_p(i8 zeroext %120, i32 %121)
  br label %123

123:                                              ; preds = %119, %82
  %124 = load i32, i32* %8, align 4
  %125 = icmp sgt i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %123
  %127 = load i32, i32* %8, align 4
  br label %129

128:                                              ; preds = %123
  br label %129

129:                                              ; preds = %128, %126
  %130 = phi i32 [ %127, %126 ], [ 0, %128 ]
  %131 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %132 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 2
  store i32 %130, i32* %133, align 4
  ret void
}

declare dso_local zeroext i8 @inb_p(i32) #1

declare dso_local i32 @outb_p(i8 zeroext, i32) #1

declare dso_local i32 @probe_irq_off(i64) #1

declare dso_local i64 @probe_irq_on(...) #1

declare dso_local zeroext i8 @serial_inp(%struct.uart_8250_port*, i32) #1

declare dso_local i32 @serial_outp(%struct.uart_8250_port*, i32, i8 zeroext) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
