; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_samsung.c_s3c24xx_serial_calcbaud.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_samsung.c_s3c24xx_serial_calcbaud.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.baud_calc = type { i64, i64, %struct.s3c24xx_uart_clksrc*, i32* }
%struct.uart_port = type { i32 }
%struct.s3c24xx_uart_clksrc = type { i64, i32 }
%struct.s3c24xx_uart_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.baud_calc*, %struct.uart_port*, %struct.s3c24xx_uart_clksrc*, i32)* @s3c24xx_serial_calcbaud to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c24xx_serial_calcbaud(%struct.baud_calc* %0, %struct.uart_port* %1, %struct.s3c24xx_uart_clksrc* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.baud_calc*, align 8
  %7 = alloca %struct.uart_port*, align 8
  %8 = alloca %struct.s3c24xx_uart_clksrc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.s3c24xx_uart_port*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.baud_calc* %0, %struct.baud_calc** %6, align 8
  store %struct.uart_port* %1, %struct.uart_port** %7, align 8
  store %struct.s3c24xx_uart_clksrc* %2, %struct.s3c24xx_uart_clksrc** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %14 = call %struct.s3c24xx_uart_port* @to_ourport(%struct.uart_port* %13)
  store %struct.s3c24xx_uart_port* %14, %struct.s3c24xx_uart_port** %10, align 8
  %15 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %16 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.s3c24xx_uart_clksrc*, %struct.s3c24xx_uart_clksrc** %8, align 8
  %19 = getelementptr inbounds %struct.s3c24xx_uart_clksrc, %struct.s3c24xx_uart_clksrc* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32* @clk_get(i32 %17, i32 %20)
  %22 = load %struct.baud_calc*, %struct.baud_calc** %6, align 8
  %23 = getelementptr inbounds %struct.baud_calc, %struct.baud_calc* %22, i32 0, i32 3
  store i32* %21, i32** %23, align 8
  %24 = load %struct.baud_calc*, %struct.baud_calc** %6, align 8
  %25 = getelementptr inbounds %struct.baud_calc, %struct.baud_calc* %24, i32 0, i32 3
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %4
  %29 = load %struct.baud_calc*, %struct.baud_calc** %6, align 8
  %30 = getelementptr inbounds %struct.baud_calc, %struct.baud_calc* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = call i64 @IS_ERR(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28, %4
  store i32 0, i32* %5, align 4
  br label %93

35:                                               ; preds = %28
  %36 = load %struct.baud_calc*, %struct.baud_calc** %6, align 8
  %37 = getelementptr inbounds %struct.baud_calc, %struct.baud_calc* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = call i64 @clk_get_rate(i32* %38)
  store i64 %39, i64* %11, align 8
  %40 = load %struct.s3c24xx_uart_clksrc*, %struct.s3c24xx_uart_clksrc** %8, align 8
  %41 = getelementptr inbounds %struct.s3c24xx_uart_clksrc, %struct.s3c24xx_uart_clksrc* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %11, align 8
  %44 = udiv i64 %43, %42
  store i64 %44, i64* %11, align 8
  %45 = load %struct.s3c24xx_uart_clksrc*, %struct.s3c24xx_uart_clksrc** %8, align 8
  %46 = load %struct.baud_calc*, %struct.baud_calc** %6, align 8
  %47 = getelementptr inbounds %struct.baud_calc, %struct.baud_calc* %46, i32 0, i32 2
  store %struct.s3c24xx_uart_clksrc* %45, %struct.s3c24xx_uart_clksrc** %47, align 8
  %48 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %10, align 8
  %49 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %35
  %55 = load i64, i64* %11, align 8
  %56 = load i32, i32* %9, align 4
  %57 = zext i32 %56 to i64
  %58 = udiv i64 %55, %57
  store i64 %58, i64* %12, align 8
  %59 = load i64, i64* %12, align 8
  %60 = udiv i64 %59, 16
  %61 = load %struct.baud_calc*, %struct.baud_calc** %6, align 8
  %62 = getelementptr inbounds %struct.baud_calc, %struct.baud_calc* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  %63 = load i64, i64* %11, align 8
  %64 = load i64, i64* %12, align 8
  %65 = udiv i64 %63, %64
  %66 = load %struct.baud_calc*, %struct.baud_calc** %6, align 8
  %67 = getelementptr inbounds %struct.baud_calc, %struct.baud_calc* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  br label %88

68:                                               ; preds = %35
  %69 = load i64, i64* %11, align 8
  %70 = load i32, i32* %9, align 4
  %71 = mul i32 8, %70
  %72 = zext i32 %71 to i64
  %73 = add i64 %69, %72
  %74 = load i32, i32* %9, align 4
  %75 = mul i32 16, %74
  %76 = zext i32 %75 to i64
  %77 = udiv i64 %73, %76
  %78 = load %struct.baud_calc*, %struct.baud_calc** %6, align 8
  %79 = getelementptr inbounds %struct.baud_calc, %struct.baud_calc* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  %80 = load i64, i64* %11, align 8
  %81 = load %struct.baud_calc*, %struct.baud_calc** %6, align 8
  %82 = getelementptr inbounds %struct.baud_calc, %struct.baud_calc* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = mul i64 %83, 16
  %85 = udiv i64 %80, %84
  %86 = load %struct.baud_calc*, %struct.baud_calc** %6, align 8
  %87 = getelementptr inbounds %struct.baud_calc, %struct.baud_calc* %86, i32 0, i32 1
  store i64 %85, i64* %87, align 8
  br label %88

88:                                               ; preds = %68, %54
  %89 = load %struct.baud_calc*, %struct.baud_calc** %6, align 8
  %90 = getelementptr inbounds %struct.baud_calc, %struct.baud_calc* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = add i64 %91, -1
  store i64 %92, i64* %90, align 8
  store i32 1, i32* %5, align 4
  br label %93

93:                                               ; preds = %88, %34
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local %struct.s3c24xx_uart_port* @to_ourport(%struct.uart_port*) #1

declare dso_local i32* @clk_get(i32, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i64 @clk_get_rate(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
