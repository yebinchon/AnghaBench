; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ioc4_serial.c_ic4_set_mctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ioc4_serial.c_ic4_set_mctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.ioc4_port = type { i32 }

@TIOCM_RTS = common dso_local global i32 0, align 4
@UART_MCR_RTS = common dso_local global i8 0, align 1
@TIOCM_DTR = common dso_local global i32 0, align 4
@UART_MCR_DTR = common dso_local global i8 0, align 1
@TIOCM_OUT1 = common dso_local global i32 0, align 4
@UART_MCR_OUT1 = common dso_local global i8 0, align 1
@TIOCM_OUT2 = common dso_local global i32 0, align 4
@UART_MCR_OUT2 = common dso_local global i8 0, align 1
@TIOCM_LOOP = common dso_local global i32 0, align 4
@UART_MCR_LOOP = common dso_local global i8 0, align 1
@IOC4_SHADOW_DTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32)* @ic4_set_mctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ic4_set_mctrl(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca %struct.ioc4_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  store i8 0, i8* %5, align 1
  %7 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %8 = call %struct.ioc4_port* @get_ioc4_port(%struct.uart_port* %7, i32 0)
  store %struct.ioc4_port* %8, %struct.ioc4_port** %6, align 8
  %9 = load %struct.ioc4_port*, %struct.ioc4_port** %6, align 8
  %10 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %11 = call i32 @port_is_active(%struct.ioc4_port* %9, %struct.uart_port* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %79

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @TIOCM_RTS, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load i8, i8* @UART_MCR_RTS, align 1
  %21 = zext i8 %20 to i32
  %22 = load i8, i8* %5, align 1
  %23 = zext i8 %22 to i32
  %24 = or i32 %23, %21
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* %5, align 1
  br label %26

26:                                               ; preds = %19, %14
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @TIOCM_DTR, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load i8, i8* @UART_MCR_DTR, align 1
  %33 = zext i8 %32 to i32
  %34 = load i8, i8* %5, align 1
  %35 = zext i8 %34 to i32
  %36 = or i32 %35, %33
  %37 = trunc i32 %36 to i8
  store i8 %37, i8* %5, align 1
  br label %38

38:                                               ; preds = %31, %26
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @TIOCM_OUT1, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load i8, i8* @UART_MCR_OUT1, align 1
  %45 = zext i8 %44 to i32
  %46 = load i8, i8* %5, align 1
  %47 = zext i8 %46 to i32
  %48 = or i32 %47, %45
  %49 = trunc i32 %48 to i8
  store i8 %49, i8* %5, align 1
  br label %50

50:                                               ; preds = %43, %38
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @TIOCM_OUT2, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = load i8, i8* @UART_MCR_OUT2, align 1
  %57 = zext i8 %56 to i32
  %58 = load i8, i8* %5, align 1
  %59 = zext i8 %58 to i32
  %60 = or i32 %59, %57
  %61 = trunc i32 %60 to i8
  store i8 %61, i8* %5, align 1
  br label %62

62:                                               ; preds = %55, %50
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @TIOCM_LOOP, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = load i8, i8* @UART_MCR_LOOP, align 1
  %69 = zext i8 %68 to i32
  %70 = load i8, i8* %5, align 1
  %71 = zext i8 %70 to i32
  %72 = or i32 %71, %69
  %73 = trunc i32 %72 to i8
  store i8 %73, i8* %5, align 1
  br label %74

74:                                               ; preds = %67, %62
  %75 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %76 = load i8, i8* %5, align 1
  %77 = load i32, i32* @IOC4_SHADOW_DTR, align 4
  %78 = call i32 @set_mcr(%struct.uart_port* %75, i8 zeroext %76, i32 %77)
  br label %79

79:                                               ; preds = %74, %13
  ret void
}

declare dso_local %struct.ioc4_port* @get_ioc4_port(%struct.uart_port*, i32) #1

declare dso_local i32 @port_is_active(%struct.ioc4_port*, %struct.uart_port*) #1

declare dso_local i32 @set_mcr(%struct.uart_port*, i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
