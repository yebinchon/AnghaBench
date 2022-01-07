; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_amba-pl010.c_pl010_startup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_amba-pl010.c_pl010_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.uart_amba_port = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32 }

@pl010_int = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"uart-pl010\00", align 1
@UART01x_FR = common dso_local global i64 0, align 8
@UART01x_FR_MODEM_ANY = common dso_local global i32 0, align 4
@UART01x_CR_UARTEN = common dso_local global i32 0, align 4
@UART010_CR_RIE = common dso_local global i32 0, align 4
@UART010_CR_RTIE = common dso_local global i32 0, align 4
@UART010_CR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @pl010_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pl010_startup(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.uart_amba_port*, align 8
  %5 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %7 = bitcast %struct.uart_port* %6 to %struct.uart_amba_port*
  store %struct.uart_amba_port* %7, %struct.uart_amba_port** %4, align 8
  %8 = load %struct.uart_amba_port*, %struct.uart_amba_port** %4, align 8
  %9 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @clk_enable(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %62

15:                                               ; preds = %1
  %16 = load %struct.uart_amba_port*, %struct.uart_amba_port** %4, align 8
  %17 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @clk_get_rate(i32 %18)
  %20 = load %struct.uart_amba_port*, %struct.uart_amba_port** %4, align 8
  %21 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  store i32 %19, i32* %22, align 4
  %23 = load %struct.uart_amba_port*, %struct.uart_amba_port** %4, align 8
  %24 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @pl010_int, align 4
  %28 = load %struct.uart_amba_port*, %struct.uart_amba_port** %4, align 8
  %29 = call i32 @request_irq(i32 %26, i32 %27, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.uart_amba_port* %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %15
  br label %57

33:                                               ; preds = %15
  %34 = load %struct.uart_amba_port*, %struct.uart_amba_port** %4, align 8
  %35 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @UART01x_FR, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @readb(i64 %39)
  %41 = load i32, i32* @UART01x_FR_MODEM_ANY, align 4
  %42 = and i32 %40, %41
  %43 = load %struct.uart_amba_port*, %struct.uart_amba_port** %4, align 8
  %44 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @UART01x_CR_UARTEN, align 4
  %46 = load i32, i32* @UART010_CR_RIE, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @UART010_CR_RTIE, align 4
  %49 = or i32 %47, %48
  %50 = load %struct.uart_amba_port*, %struct.uart_amba_port** %4, align 8
  %51 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @UART010_CR, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @writel(i32 %49, i64 %55)
  store i32 0, i32* %2, align 4
  br label %64

57:                                               ; preds = %32
  %58 = load %struct.uart_amba_port*, %struct.uart_amba_port** %4, align 8
  %59 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @clk_disable(i32 %60)
  br label %62

62:                                               ; preds = %57, %14
  %63 = load i32, i32* %5, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %62, %33
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.uart_amba_port*) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
