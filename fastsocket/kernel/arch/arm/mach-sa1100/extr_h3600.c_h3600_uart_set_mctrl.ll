; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-sa1100/extr_h3600.c_h3600_uart_set_mctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-sa1100/extr_h3600.c_h3600_uart_set_mctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i64 }

@_Ser3UTCR0 = common dso_local global i64 0, align 8
@TIOCM_RTS = common dso_local global i32 0, align 4
@GPIO_H3600_COM_RTS = common dso_local global i8* null, align 8
@GPCR = common dso_local global i8* null, align 8
@GPSR = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32)* @h3600_uart_set_mctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @h3600_uart_set_mctrl(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %6 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @_Ser3UTCR0, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %20

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @TIOCM_RTS, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load i8*, i8** @GPIO_H3600_COM_RTS, align 8
  store i8* %16, i8** @GPCR, align 8
  br label %19

17:                                               ; preds = %10
  %18 = load i8*, i8** @GPIO_H3600_COM_RTS, align 8
  store i8* %18, i8** @GPSR, align 8
  br label %19

19:                                               ; preds = %17, %15
  br label %20

20:                                               ; preds = %19, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
