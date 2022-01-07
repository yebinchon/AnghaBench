; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_8250.c_wait_for_xmitr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_8250.c_wait_for_xmitr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_8250_port = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@UART_LSR = common dso_local global i32 0, align 4
@LSR_SAVE_FLAGS = common dso_local global i32 0, align 4
@UPF_CONS_FLOW = common dso_local global i32 0, align 4
@UART_MSR = common dso_local global i32 0, align 4
@MSR_SAVE_FLAGS = common dso_local global i32 0, align 4
@ASYNC_CTS_FLOW = common dso_local global i32 0, align 4
@UART_MSR_CTS = common dso_local global i32 0, align 4
@ASYNC_DSR_FLOW = common dso_local global i32 0, align 4
@UART_MSR_DSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_8250_port*, i32)* @wait_for_xmitr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wait_for_xmitr(%struct.uart_8250_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_8250_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.uart_8250_port* %0, %struct.uart_8250_port** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 10000, i32* %6, align 4
  br label %9

9:                                                ; preds = %26, %2
  %10 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %11 = load i32, i32* @UART_LSR, align 4
  %12 = call i32 @serial_in(%struct.uart_8250_port* %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @LSR_SAVE_FLAGS, align 4
  %15 = and i32 %13, %14
  %16 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %17 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 4
  %20 = load i32, i32* %6, align 4
  %21 = add i32 %20, -1
  store i32 %21, i32* %6, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %9
  br label %32

24:                                               ; preds = %9
  %25 = call i32 @udelay(i32 1)
  br label %26

26:                                               ; preds = %24
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %9, label %32

32:                                               ; preds = %26, %23
  %33 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %34 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @UPF_CONS_FLOW, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %90

40:                                               ; preds = %32
  store i32 1000000, i32* %7, align 4
  br label %41

41:                                               ; preds = %86, %40
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %89

44:                                               ; preds = %41
  %45 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %46 = load i32, i32* @UART_MSR, align 4
  %47 = call i32 @serial_in(%struct.uart_8250_port* %45, i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @MSR_SAVE_FLAGS, align 4
  %50 = and i32 %48, %49
  %51 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %52 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %56 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @ASYNC_CTS_FLOW, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %44
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @UART_MSR_CTS, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %89

68:                                               ; preds = %62, %44
  %69 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %70 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @ASYNC_DSR_FLOW, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %68
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @UART_MSR_DSR, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %89

82:                                               ; preds = %76, %68
  br label %83

83:                                               ; preds = %82
  %84 = call i32 @udelay(i32 1)
  %85 = call i32 (...) @touch_nmi_watchdog()
  br label %86

86:                                               ; preds = %83
  %87 = load i32, i32* %7, align 4
  %88 = add i32 %87, -1
  store i32 %88, i32* %7, align 4
  br label %41

89:                                               ; preds = %81, %67, %41
  br label %90

90:                                               ; preds = %89, %32
  ret void
}

declare dso_local i32 @serial_in(%struct.uart_8250_port*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @touch_nmi_watchdog(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
