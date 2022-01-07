; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/cpm_uart/extr_cpm_uart_core.c_cpm_uart_set_mctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/cpm_uart/extr_cpm_uart_core.c_cpm_uart_set_mctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.uart_cpm_port = type { i64* }

@GPIO_RTS = common dso_local global i64 0, align 8
@TIOCM_RTS = common dso_local global i32 0, align 4
@GPIO_DTR = common dso_local global i64 0, align 8
@TIOCM_DTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32)* @cpm_uart_set_mctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpm_uart_set_mctrl(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uart_cpm_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %7 = bitcast %struct.uart_port* %6 to %struct.uart_cpm_port*
  store %struct.uart_cpm_port* %7, %struct.uart_cpm_port** %5, align 8
  %8 = load %struct.uart_cpm_port*, %struct.uart_cpm_port** %5, align 8
  %9 = getelementptr inbounds %struct.uart_cpm_port, %struct.uart_cpm_port* %8, i32 0, i32 0
  %10 = load i64*, i64** %9, align 8
  %11 = load i64, i64* @GPIO_RTS, align 8
  %12 = getelementptr inbounds i64, i64* %10, i64 %11
  %13 = load i64, i64* %12, align 8
  %14 = icmp sge i64 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %2
  %16 = load %struct.uart_cpm_port*, %struct.uart_cpm_port** %5, align 8
  %17 = getelementptr inbounds %struct.uart_cpm_port, %struct.uart_cpm_port* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = load i64, i64* @GPIO_RTS, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @TIOCM_RTS, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @gpio_set_value(i64 %21, i32 %27)
  br label %29

29:                                               ; preds = %15, %2
  %30 = load %struct.uart_cpm_port*, %struct.uart_cpm_port** %5, align 8
  %31 = getelementptr inbounds %struct.uart_cpm_port, %struct.uart_cpm_port* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load i64, i64* @GPIO_DTR, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = icmp sge i64 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %29
  %38 = load %struct.uart_cpm_port*, %struct.uart_cpm_port** %5, align 8
  %39 = getelementptr inbounds %struct.uart_cpm_port, %struct.uart_cpm_port* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = load i64, i64* @GPIO_DTR, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @TIOCM_DTR, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i32 @gpio_set_value(i64 %43, i32 %49)
  br label %51

51:                                               ; preds = %37, %29
  ret void
}

declare dso_local i32 @gpio_set_value(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
