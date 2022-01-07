; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_8250.c_size_fifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_8250.c_size_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_8250_port = type { i32 }

@UART_LCR = common dso_local global i32 0, align 4
@UART_FCR = common dso_local global i32 0, align 4
@UART_MCR = common dso_local global i32 0, align 4
@UART_FCR_ENABLE_FIFO = common dso_local global i8 0, align 1
@UART_FCR_CLEAR_RCVR = common dso_local global i8 0, align 1
@UART_FCR_CLEAR_XMIT = common dso_local global i8 0, align 1
@UART_MCR_LOOP = common dso_local global i8 0, align 1
@UART_LCR_DLAB = common dso_local global i8 0, align 1
@UART_TX = common dso_local global i32 0, align 4
@UART_LSR = common dso_local global i32 0, align 4
@UART_LSR_DR = common dso_local global i8 0, align 1
@UART_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_8250_port*)* @size_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @size_fifo(%struct.uart_8250_port* %0) #0 {
  %2 = alloca %struct.uart_8250_port*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  store %struct.uart_8250_port* %0, %struct.uart_8250_port** %2, align 8
  %8 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %9 = load i32, i32* @UART_LCR, align 4
  %10 = call zeroext i8 @serial_inp(%struct.uart_8250_port* %8, i32 %9)
  store i8 %10, i8* %5, align 1
  %11 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %12 = load i32, i32* @UART_LCR, align 4
  %13 = call i32 @serial_outp(%struct.uart_8250_port* %11, i32 %12, i8 zeroext 0)
  %14 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %15 = load i32, i32* @UART_FCR, align 4
  %16 = call zeroext i8 @serial_inp(%struct.uart_8250_port* %14, i32 %15)
  store i8 %16, i8* %3, align 1
  %17 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %18 = load i32, i32* @UART_MCR, align 4
  %19 = call zeroext i8 @serial_inp(%struct.uart_8250_port* %17, i32 %18)
  store i8 %19, i8* %4, align 1
  %20 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %21 = load i32, i32* @UART_FCR, align 4
  %22 = load i8, i8* @UART_FCR_ENABLE_FIFO, align 1
  %23 = zext i8 %22 to i32
  %24 = load i8, i8* @UART_FCR_CLEAR_RCVR, align 1
  %25 = zext i8 %24 to i32
  %26 = or i32 %23, %25
  %27 = load i8, i8* @UART_FCR_CLEAR_XMIT, align 1
  %28 = zext i8 %27 to i32
  %29 = or i32 %26, %28
  %30 = trunc i32 %29 to i8
  %31 = call i32 @serial_outp(%struct.uart_8250_port* %20, i32 %21, i8 zeroext %30)
  %32 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %33 = load i32, i32* @UART_MCR, align 4
  %34 = load i8, i8* @UART_MCR_LOOP, align 1
  %35 = call i32 @serial_outp(%struct.uart_8250_port* %32, i32 %33, i8 zeroext %34)
  %36 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %37 = load i32, i32* @UART_LCR, align 4
  %38 = load i8, i8* @UART_LCR_DLAB, align 1
  %39 = call i32 @serial_outp(%struct.uart_8250_port* %36, i32 %37, i8 zeroext %38)
  %40 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %41 = call zeroext i16 @serial_dl_read(%struct.uart_8250_port* %40)
  store i16 %41, i16* %6, align 2
  %42 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %43 = call i32 @serial_dl_write(%struct.uart_8250_port* %42, i16 zeroext 1)
  %44 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %45 = load i32, i32* @UART_LCR, align 4
  %46 = call i32 @serial_outp(%struct.uart_8250_port* %44, i32 %45, i8 zeroext 3)
  store i32 0, i32* %7, align 4
  br label %47

47:                                               ; preds = %56, %1
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %48, 256
  br i1 %49, label %50, label %59

50:                                               ; preds = %47
  %51 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %52 = load i32, i32* @UART_TX, align 4
  %53 = load i32, i32* %7, align 4
  %54 = trunc i32 %53 to i8
  %55 = call i32 @serial_outp(%struct.uart_8250_port* %51, i32 %52, i8 zeroext %54)
  br label %56

56:                                               ; preds = %50
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %47

59:                                               ; preds = %47
  %60 = call i32 @mdelay(i32 20)
  store i32 0, i32* %7, align 4
  br label %61

61:                                               ; preds = %79, %59
  %62 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %63 = load i32, i32* @UART_LSR, align 4
  %64 = call zeroext i8 @serial_inp(%struct.uart_8250_port* %62, i32 %63)
  %65 = zext i8 %64 to i32
  %66 = load i8, i8* @UART_LSR_DR, align 1
  %67 = zext i8 %66 to i32
  %68 = and i32 %65, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %61
  %71 = load i32, i32* %7, align 4
  %72 = icmp slt i32 %71, 256
  br label %73

73:                                               ; preds = %70, %61
  %74 = phi i1 [ false, %61 ], [ %72, %70 ]
  br i1 %74, label %75, label %82

75:                                               ; preds = %73
  %76 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %77 = load i32, i32* @UART_RX, align 4
  %78 = call zeroext i8 @serial_inp(%struct.uart_8250_port* %76, i32 %77)
  br label %79

79:                                               ; preds = %75
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %7, align 4
  br label %61

82:                                               ; preds = %73
  %83 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %84 = load i32, i32* @UART_FCR, align 4
  %85 = load i8, i8* %3, align 1
  %86 = call i32 @serial_outp(%struct.uart_8250_port* %83, i32 %84, i8 zeroext %85)
  %87 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %88 = load i32, i32* @UART_MCR, align 4
  %89 = load i8, i8* %4, align 1
  %90 = call i32 @serial_outp(%struct.uart_8250_port* %87, i32 %88, i8 zeroext %89)
  %91 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %92 = load i32, i32* @UART_LCR, align 4
  %93 = load i8, i8* @UART_LCR_DLAB, align 1
  %94 = call i32 @serial_outp(%struct.uart_8250_port* %91, i32 %92, i8 zeroext %93)
  %95 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %96 = load i16, i16* %6, align 2
  %97 = call i32 @serial_dl_write(%struct.uart_8250_port* %95, i16 zeroext %96)
  %98 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %99 = load i32, i32* @UART_LCR, align 4
  %100 = load i8, i8* %5, align 1
  %101 = call i32 @serial_outp(%struct.uart_8250_port* %98, i32 %99, i8 zeroext %100)
  %102 = load i32, i32* %7, align 4
  ret i32 %102
}

declare dso_local zeroext i8 @serial_inp(%struct.uart_8250_port*, i32) #1

declare dso_local i32 @serial_outp(%struct.uart_8250_port*, i32, i8 zeroext) #1

declare dso_local zeroext i16 @serial_dl_read(%struct.uart_8250_port*) #1

declare dso_local i32 @serial_dl_write(%struct.uart_8250_port*, i16 zeroext) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
