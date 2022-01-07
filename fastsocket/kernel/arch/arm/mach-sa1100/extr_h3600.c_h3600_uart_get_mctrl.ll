; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-sa1100/extr_h3600.c_h3600_uart_get_mctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-sa1100/extr_h3600.c_h3600_uart_get_mctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i64 }

@TIOCM_CD = common dso_local global i32 0, align 4
@TIOCM_CTS = common dso_local global i32 0, align 4
@TIOCM_DSR = common dso_local global i32 0, align 4
@_Ser3UTCR0 = common dso_local global i64 0, align 8
@GPLR = common dso_local global i32 0, align 4
@GPIO_H3600_COM_DCD = common dso_local global i32 0, align 4
@GPIO_H3600_COM_CTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @h3600_uart_get_mctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @h3600_uart_get_mctrl(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %5 = load i32, i32* @TIOCM_CD, align 4
  %6 = load i32, i32* @TIOCM_CTS, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @TIOCM_DSR, align 4
  %9 = or i32 %7, %8
  store i32 %9, i32* %3, align 4
  %10 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %11 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @_Ser3UTCR0, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %37

15:                                               ; preds = %1
  %16 = load i32, i32* @GPLR, align 4
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @GPIO_H3600_COM_DCD, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load i32, i32* @TIOCM_CD, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %3, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %21, %15
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @GPIO_H3600_COM_CTS, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load i32, i32* @TIOCM_CTS, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %3, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %31, %26
  br label %37

37:                                               ; preds = %36, %1
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
