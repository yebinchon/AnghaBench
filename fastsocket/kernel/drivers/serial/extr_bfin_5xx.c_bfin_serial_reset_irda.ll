; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_bfin_5xx.c_bfin_serial_reset_irda.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_bfin_5xx.c_bfin_serial_reset_irda.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }

@bfin_serial_ports = common dso_local global i32* null, align 8
@IREN = common dso_local global i16 0, align 2
@RPOLC = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @bfin_serial_reset_irda to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfin_serial_reset_irda(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %5 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %6 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %3, align 4
  %8 = load i32*, i32** @bfin_serial_ports, align 8
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  %12 = call zeroext i16 @UART_GET_GCTL(i32* %11)
  store i16 %12, i16* %4, align 2
  %13 = load i16, i16* @IREN, align 2
  %14 = zext i16 %13 to i32
  %15 = load i16, i16* @RPOLC, align 2
  %16 = zext i16 %15 to i32
  %17 = or i32 %14, %16
  %18 = xor i32 %17, -1
  %19 = load i16, i16* %4, align 2
  %20 = zext i16 %19 to i32
  %21 = and i32 %20, %18
  %22 = trunc i32 %21 to i16
  store i16 %22, i16* %4, align 2
  %23 = load i32*, i32** @bfin_serial_ports, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i16, i16* %4, align 2
  %28 = call i32 @UART_PUT_GCTL(i32* %26, i16 zeroext %27)
  %29 = call i32 (...) @SSYNC()
  %30 = load i16, i16* @IREN, align 2
  %31 = zext i16 %30 to i32
  %32 = load i16, i16* @RPOLC, align 2
  %33 = zext i16 %32 to i32
  %34 = or i32 %31, %33
  %35 = load i16, i16* %4, align 2
  %36 = zext i16 %35 to i32
  %37 = or i32 %36, %34
  %38 = trunc i32 %37 to i16
  store i16 %38, i16* %4, align 2
  %39 = load i32*, i32** @bfin_serial_ports, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i16, i16* %4, align 2
  %44 = call i32 @UART_PUT_GCTL(i32* %42, i16 zeroext %43)
  %45 = call i32 (...) @SSYNC()
  ret void
}

declare dso_local zeroext i16 @UART_GET_GCTL(i32*) #1

declare dso_local i32 @UART_PUT_GCTL(i32*, i16 zeroext) #1

declare dso_local i32 @SSYNC(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
