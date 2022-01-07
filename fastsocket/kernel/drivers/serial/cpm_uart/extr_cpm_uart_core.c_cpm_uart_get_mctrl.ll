; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/cpm_uart/extr_cpm_uart_core.c_cpm_uart_get_mctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/cpm_uart/extr_cpm_uart_core.c_cpm_uart_get_mctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.uart_cpm_port = type { i64* }

@TIOCM_CTS = common dso_local global i32 0, align 4
@TIOCM_DSR = common dso_local global i32 0, align 4
@TIOCM_CAR = common dso_local global i32 0, align 4
@GPIO_CTS = common dso_local global i64 0, align 8
@GPIO_DSR = common dso_local global i64 0, align 8
@GPIO_DCD = common dso_local global i64 0, align 8
@GPIO_RI = common dso_local global i64 0, align 8
@TIOCM_RNG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @cpm_uart_get_mctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpm_uart_get_mctrl(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.uart_cpm_port*, align 8
  %4 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %5 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %6 = bitcast %struct.uart_port* %5 to %struct.uart_cpm_port*
  store %struct.uart_cpm_port* %6, %struct.uart_cpm_port** %3, align 8
  %7 = load i32, i32* @TIOCM_CTS, align 4
  %8 = load i32, i32* @TIOCM_DSR, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @TIOCM_CAR, align 4
  %11 = or i32 %9, %10
  store i32 %11, i32* %4, align 4
  %12 = load %struct.uart_cpm_port*, %struct.uart_cpm_port** %3, align 8
  %13 = getelementptr inbounds %struct.uart_cpm_port, %struct.uart_cpm_port* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = load i64, i64* @GPIO_CTS, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = icmp sge i64 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %1
  %20 = load %struct.uart_cpm_port*, %struct.uart_cpm_port** %3, align 8
  %21 = getelementptr inbounds %struct.uart_cpm_port, %struct.uart_cpm_port* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load i64, i64* @GPIO_CTS, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @gpio_get_value(i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %19
  %29 = load i32, i32* @TIOCM_CTS, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %4, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %28, %19
  br label %34

34:                                               ; preds = %33, %1
  %35 = load %struct.uart_cpm_port*, %struct.uart_cpm_port** %3, align 8
  %36 = getelementptr inbounds %struct.uart_cpm_port, %struct.uart_cpm_port* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = load i64, i64* @GPIO_DSR, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = icmp sge i64 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %34
  %43 = load %struct.uart_cpm_port*, %struct.uart_cpm_port** %3, align 8
  %44 = getelementptr inbounds %struct.uart_cpm_port, %struct.uart_cpm_port* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = load i64, i64* @GPIO_DSR, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = call i64 @gpio_get_value(i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %42
  %52 = load i32, i32* @TIOCM_DSR, align 4
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %4, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %51, %42
  br label %57

57:                                               ; preds = %56, %34
  %58 = load %struct.uart_cpm_port*, %struct.uart_cpm_port** %3, align 8
  %59 = getelementptr inbounds %struct.uart_cpm_port, %struct.uart_cpm_port* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = load i64, i64* @GPIO_DCD, align 8
  %62 = getelementptr inbounds i64, i64* %60, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = icmp sge i64 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %57
  %66 = load %struct.uart_cpm_port*, %struct.uart_cpm_port** %3, align 8
  %67 = getelementptr inbounds %struct.uart_cpm_port, %struct.uart_cpm_port* %66, i32 0, i32 0
  %68 = load i64*, i64** %67, align 8
  %69 = load i64, i64* @GPIO_DCD, align 8
  %70 = getelementptr inbounds i64, i64* %68, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = call i64 @gpio_get_value(i64 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %65
  %75 = load i32, i32* @TIOCM_CAR, align 4
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %4, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %74, %65
  br label %80

80:                                               ; preds = %79, %57
  %81 = load %struct.uart_cpm_port*, %struct.uart_cpm_port** %3, align 8
  %82 = getelementptr inbounds %struct.uart_cpm_port, %struct.uart_cpm_port* %81, i32 0, i32 0
  %83 = load i64*, i64** %82, align 8
  %84 = load i64, i64* @GPIO_RI, align 8
  %85 = getelementptr inbounds i64, i64* %83, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = icmp sge i64 %86, 0
  br i1 %87, label %88, label %102

88:                                               ; preds = %80
  %89 = load %struct.uart_cpm_port*, %struct.uart_cpm_port** %3, align 8
  %90 = getelementptr inbounds %struct.uart_cpm_port, %struct.uart_cpm_port* %89, i32 0, i32 0
  %91 = load i64*, i64** %90, align 8
  %92 = load i64, i64* @GPIO_RI, align 8
  %93 = getelementptr inbounds i64, i64* %91, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = call i64 @gpio_get_value(i64 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %88
  %98 = load i32, i32* @TIOCM_RNG, align 4
  %99 = load i32, i32* %4, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %97, %88
  br label %102

102:                                              ; preds = %101, %80
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i64 @gpio_get_value(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
