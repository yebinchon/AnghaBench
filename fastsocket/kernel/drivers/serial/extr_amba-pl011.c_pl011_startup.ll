; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_amba-pl011.c_pl011_startup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_amba-pl011.c_pl011_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.uart_amba_port = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32, i32 }

@pl011_int = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"uart-pl011\00", align 1
@UART011_IFLS = common dso_local global i64 0, align 8
@UART01x_CR_UARTEN = common dso_local global i32 0, align 4
@UART011_CR_TXE = common dso_local global i32 0, align 4
@UART011_CR_LBE = common dso_local global i32 0, align 4
@UART011_CR = common dso_local global i64 0, align 8
@UART011_FBRD = common dso_local global i64 0, align 8
@UART011_IBRD = common dso_local global i64 0, align 8
@UART011_LCRH = common dso_local global i64 0, align 8
@UART01x_DR = common dso_local global i64 0, align 8
@UART01x_FR = common dso_local global i64 0, align 8
@UART01x_FR_BUSY = common dso_local global i32 0, align 4
@UART011_CR_RXE = common dso_local global i32 0, align 4
@UART01x_FR_MODEM_ANY = common dso_local global i32 0, align 4
@UART011_RXIM = common dso_local global i32 0, align 4
@UART011_RTIM = common dso_local global i32 0, align 4
@UART011_IMSC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @pl011_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pl011_startup(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.uart_amba_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %7 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %8 = bitcast %struct.uart_port* %7 to %struct.uart_amba_port*
  store %struct.uart_amba_port* %8, %struct.uart_amba_port** %4, align 8
  %9 = load %struct.uart_amba_port*, %struct.uart_amba_port** %4, align 8
  %10 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @clk_enable(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %152

16:                                               ; preds = %1
  %17 = load %struct.uart_amba_port*, %struct.uart_amba_port** %4, align 8
  %18 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @clk_get_rate(i32 %19)
  %21 = load %struct.uart_amba_port*, %struct.uart_amba_port** %4, align 8
  %22 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 3
  store i32 %20, i32* %23, align 4
  %24 = load %struct.uart_amba_port*, %struct.uart_amba_port** %4, align 8
  %25 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @pl011_int, align 4
  %29 = load %struct.uart_amba_port*, %struct.uart_amba_port** %4, align 8
  %30 = call i32 @request_irq(i32 %27, i32 %28, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.uart_amba_port* %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %16
  br label %147

34:                                               ; preds = %16
  %35 = load %struct.uart_amba_port*, %struct.uart_amba_port** %4, align 8
  %36 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.uart_amba_port*, %struct.uart_amba_port** %4, align 8
  %39 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @UART011_IFLS, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @writew(i32 %37, i64 %43)
  %45 = load i32, i32* @UART01x_CR_UARTEN, align 4
  %46 = load i32, i32* @UART011_CR_TXE, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @UART011_CR_LBE, align 4
  %49 = or i32 %47, %48
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.uart_amba_port*, %struct.uart_amba_port** %4, align 8
  %52 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @UART011_CR, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @writew(i32 %50, i64 %56)
  %58 = load %struct.uart_amba_port*, %struct.uart_amba_port** %4, align 8
  %59 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @UART011_FBRD, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @writew(i32 0, i64 %63)
  %65 = load %struct.uart_amba_port*, %struct.uart_amba_port** %4, align 8
  %66 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @UART011_IBRD, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @writew(i32 1, i64 %70)
  %72 = load %struct.uart_amba_port*, %struct.uart_amba_port** %4, align 8
  %73 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %72, i32 0, i32 4
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @UART011_LCRH, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @writew(i32 0, i64 %77)
  %79 = load %struct.uart_amba_port*, %struct.uart_amba_port** %4, align 8
  %80 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %79, i32 0, i32 4
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @UART01x_DR, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i32 @writew(i32 0, i64 %84)
  br label %86

86:                                               ; preds = %97, %34
  %87 = load %struct.uart_amba_port*, %struct.uart_amba_port** %4, align 8
  %88 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @UART01x_FR, align 8
  %92 = add nsw i64 %90, %91
  %93 = call i32 @readw(i64 %92)
  %94 = load i32, i32* @UART01x_FR_BUSY, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %86
  %98 = call i32 (...) @barrier()
  br label %86

99:                                               ; preds = %86
  %100 = load i32, i32* @UART01x_CR_UARTEN, align 4
  %101 = load i32, i32* @UART011_CR_RXE, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @UART011_CR_TXE, align 4
  %104 = or i32 %102, %103
  store i32 %104, i32* %5, align 4
  %105 = load i32, i32* %5, align 4
  %106 = load %struct.uart_amba_port*, %struct.uart_amba_port** %4, align 8
  %107 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @UART011_CR, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 @writew(i32 %105, i64 %111)
  %113 = load %struct.uart_amba_port*, %struct.uart_amba_port** %4, align 8
  %114 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %113, i32 0, i32 4
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @UART01x_FR, align 8
  %118 = add nsw i64 %116, %117
  %119 = call i32 @readw(i64 %118)
  %120 = load i32, i32* @UART01x_FR_MODEM_ANY, align 4
  %121 = and i32 %119, %120
  %122 = load %struct.uart_amba_port*, %struct.uart_amba_port** %4, align 8
  %123 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  %124 = load %struct.uart_amba_port*, %struct.uart_amba_port** %4, align 8
  %125 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %124, i32 0, i32 4
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = call i32 @spin_lock_irq(i32* %126)
  %128 = load i32, i32* @UART011_RXIM, align 4
  %129 = load i32, i32* @UART011_RTIM, align 4
  %130 = or i32 %128, %129
  %131 = load %struct.uart_amba_port*, %struct.uart_amba_port** %4, align 8
  %132 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %131, i32 0, i32 2
  store i32 %130, i32* %132, align 8
  %133 = load %struct.uart_amba_port*, %struct.uart_amba_port** %4, align 8
  %134 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.uart_amba_port*, %struct.uart_amba_port** %4, align 8
  %137 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %136, i32 0, i32 4
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @UART011_IMSC, align 8
  %141 = add nsw i64 %139, %140
  %142 = call i32 @writew(i32 %135, i64 %141)
  %143 = load %struct.uart_amba_port*, %struct.uart_amba_port** %4, align 8
  %144 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %143, i32 0, i32 4
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  %146 = call i32 @spin_unlock_irq(i32* %145)
  store i32 0, i32* %2, align 4
  br label %154

147:                                              ; preds = %33
  %148 = load %struct.uart_amba_port*, %struct.uart_amba_port** %4, align 8
  %149 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @clk_disable(i32 %150)
  br label %152

152:                                              ; preds = %147, %15
  %153 = load i32, i32* %6, align 4
  store i32 %153, i32* %2, align 4
  br label %154

154:                                              ; preds = %152, %99
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.uart_amba_port*) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @readw(i64) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
