; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_8250.c_serial8250_set_mctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_8250.c_serial8250_set_mctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.uart_8250_port = type { i8, i8, i8 }

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
@UART_MCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32)* @serial8250_set_mctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serial8250_set_mctrl(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uart_8250_port*, align 8
  %6 = alloca i8, align 1
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %8 = bitcast %struct.uart_port* %7 to %struct.uart_8250_port*
  store %struct.uart_8250_port* %8, %struct.uart_8250_port** %5, align 8
  store i8 0, i8* %6, align 1
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @TIOCM_RTS, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load i8, i8* @UART_MCR_RTS, align 1
  %15 = zext i8 %14 to i32
  %16 = load i8, i8* %6, align 1
  %17 = zext i8 %16 to i32
  %18 = or i32 %17, %15
  %19 = trunc i32 %18 to i8
  store i8 %19, i8* %6, align 1
  br label %20

20:                                               ; preds = %13, %2
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @TIOCM_DTR, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load i8, i8* @UART_MCR_DTR, align 1
  %27 = zext i8 %26 to i32
  %28 = load i8, i8* %6, align 1
  %29 = zext i8 %28 to i32
  %30 = or i32 %29, %27
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %6, align 1
  br label %32

32:                                               ; preds = %25, %20
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @TIOCM_OUT1, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load i8, i8* @UART_MCR_OUT1, align 1
  %39 = zext i8 %38 to i32
  %40 = load i8, i8* %6, align 1
  %41 = zext i8 %40 to i32
  %42 = or i32 %41, %39
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* %6, align 1
  br label %44

44:                                               ; preds = %37, %32
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @TIOCM_OUT2, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  %50 = load i8, i8* @UART_MCR_OUT2, align 1
  %51 = zext i8 %50 to i32
  %52 = load i8, i8* %6, align 1
  %53 = zext i8 %52 to i32
  %54 = or i32 %53, %51
  %55 = trunc i32 %54 to i8
  store i8 %55, i8* %6, align 1
  br label %56

56:                                               ; preds = %49, %44
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @TIOCM_LOOP, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = load i8, i8* @UART_MCR_LOOP, align 1
  %63 = zext i8 %62 to i32
  %64 = load i8, i8* %6, align 1
  %65 = zext i8 %64 to i32
  %66 = or i32 %65, %63
  %67 = trunc i32 %66 to i8
  store i8 %67, i8* %6, align 1
  br label %68

68:                                               ; preds = %61, %56
  %69 = load i8, i8* %6, align 1
  %70 = zext i8 %69 to i32
  %71 = load %struct.uart_8250_port*, %struct.uart_8250_port** %5, align 8
  %72 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %71, i32 0, i32 0
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = and i32 %70, %74
  %76 = load %struct.uart_8250_port*, %struct.uart_8250_port** %5, align 8
  %77 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %76, i32 0, i32 1
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = or i32 %75, %79
  %81 = load %struct.uart_8250_port*, %struct.uart_8250_port** %5, align 8
  %82 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %81, i32 0, i32 2
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = or i32 %80, %84
  %86 = trunc i32 %85 to i8
  store i8 %86, i8* %6, align 1
  %87 = load %struct.uart_8250_port*, %struct.uart_8250_port** %5, align 8
  %88 = load i32, i32* @UART_MCR, align 4
  %89 = load i8, i8* %6, align 1
  %90 = call i32 @serial_out(%struct.uart_8250_port* %87, i32 %88, i8 zeroext %89)
  ret void
}

declare dso_local i32 @serial_out(%struct.uart_8250_port*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
