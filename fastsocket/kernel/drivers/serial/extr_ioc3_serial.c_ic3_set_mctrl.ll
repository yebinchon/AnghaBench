; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ioc3_serial.c_ic3_set_mctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ioc3_serial.c_ic3_set_mctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }

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
@SHADOW_DTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32)* @ic3_set_mctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ic3_set_mctrl(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  store i8 0, i8* %5, align 1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @TIOCM_RTS, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load i8, i8* @UART_MCR_RTS, align 1
  %12 = zext i8 %11 to i32
  %13 = load i8, i8* %5, align 1
  %14 = zext i8 %13 to i32
  %15 = or i32 %14, %12
  %16 = trunc i32 %15 to i8
  store i8 %16, i8* %5, align 1
  br label %17

17:                                               ; preds = %10, %2
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @TIOCM_DTR, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load i8, i8* @UART_MCR_DTR, align 1
  %24 = zext i8 %23 to i32
  %25 = load i8, i8* %5, align 1
  %26 = zext i8 %25 to i32
  %27 = or i32 %26, %24
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %5, align 1
  br label %29

29:                                               ; preds = %22, %17
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @TIOCM_OUT1, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load i8, i8* @UART_MCR_OUT1, align 1
  %36 = zext i8 %35 to i32
  %37 = load i8, i8* %5, align 1
  %38 = zext i8 %37 to i32
  %39 = or i32 %38, %36
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* %5, align 1
  br label %41

41:                                               ; preds = %34, %29
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @TIOCM_OUT2, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load i8, i8* @UART_MCR_OUT2, align 1
  %48 = zext i8 %47 to i32
  %49 = load i8, i8* %5, align 1
  %50 = zext i8 %49 to i32
  %51 = or i32 %50, %48
  %52 = trunc i32 %51 to i8
  store i8 %52, i8* %5, align 1
  br label %53

53:                                               ; preds = %46, %41
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @TIOCM_LOOP, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %53
  %59 = load i8, i8* @UART_MCR_LOOP, align 1
  %60 = zext i8 %59 to i32
  %61 = load i8, i8* %5, align 1
  %62 = zext i8 %61 to i32
  %63 = or i32 %62, %60
  %64 = trunc i32 %63 to i8
  store i8 %64, i8* %5, align 1
  br label %65

65:                                               ; preds = %58, %53
  %66 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %67 = load i8, i8* %5, align 1
  %68 = load i32, i32* @SHADOW_DTR, align 4
  %69 = call i32 @set_mcr(%struct.uart_port* %66, i8 zeroext %67, i32 %68)
  ret void
}

declare dso_local i32 @set_mcr(%struct.uart_port*, i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
