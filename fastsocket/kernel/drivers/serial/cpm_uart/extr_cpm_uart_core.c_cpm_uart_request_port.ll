; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/cpm_uart/extr_cpm_uart_core.c_cpm_uart_request_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/cpm_uart/extr_cpm_uart_core.c_cpm_uart_request_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.uart_cpm_port = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"CPM uart[%d]:request port\0A\00", align 1
@FLAG_CONSOLE = common dso_local global i32 0, align 4
@SMCM_RX = common dso_local global i32 0, align 4
@SMCM_TX = common dso_local global i32 0, align 4
@SMCMR_REN = common dso_local global i32 0, align 4
@SMCMR_TEN = common dso_local global i32 0, align 4
@UART_SCCM_TX = common dso_local global i32 0, align 4
@UART_SCCM_RX = common dso_local global i32 0, align 4
@SCC_GSMRL_ENR = common dso_local global i32 0, align 4
@SCC_GSMRL_ENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @cpm_uart_request_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpm_uart_request_port(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.uart_cpm_port*, align 8
  %5 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %7 = bitcast %struct.uart_port* %6 to %struct.uart_cpm_port*
  store %struct.uart_cpm_port* %7, %struct.uart_cpm_port** %4, align 8
  %8 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %9 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.uart_cpm_port*, %struct.uart_cpm_port** %4, align 8
  %13 = getelementptr inbounds %struct.uart_cpm_port, %struct.uart_cpm_port* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @FLAG_CONSOLE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %77

19:                                               ; preds = %1
  %20 = load %struct.uart_cpm_port*, %struct.uart_cpm_port** %4, align 8
  %21 = call i64 @IS_SMC(%struct.uart_cpm_port* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %19
  %24 = load %struct.uart_cpm_port*, %struct.uart_cpm_port** %4, align 8
  %25 = getelementptr inbounds %struct.uart_cpm_port, %struct.uart_cpm_port* %24, i32 0, i32 2
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* @SMCM_RX, align 4
  %29 = load i32, i32* @SMCM_TX, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @clrbits8(i32* %27, i32 %30)
  %32 = load %struct.uart_cpm_port*, %struct.uart_cpm_port** %4, align 8
  %33 = getelementptr inbounds %struct.uart_cpm_port, %struct.uart_cpm_port* %32, i32 0, i32 2
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* @SMCMR_REN, align 4
  %37 = load i32, i32* @SMCMR_TEN, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @clrbits16(i32* %35, i32 %38)
  br label %57

40:                                               ; preds = %19
  %41 = load %struct.uart_cpm_port*, %struct.uart_cpm_port** %4, align 8
  %42 = getelementptr inbounds %struct.uart_cpm_port, %struct.uart_cpm_port* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32, i32* @UART_SCCM_TX, align 4
  %46 = load i32, i32* @UART_SCCM_RX, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @clrbits16(i32* %44, i32 %47)
  %49 = load %struct.uart_cpm_port*, %struct.uart_cpm_port** %4, align 8
  %50 = getelementptr inbounds %struct.uart_cpm_port, %struct.uart_cpm_port* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* @SCC_GSMRL_ENR, align 4
  %54 = load i32, i32* @SCC_GSMRL_ENT, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @clrbits32(i32* %52, i32 %55)
  br label %57

57:                                               ; preds = %40, %23
  %58 = load %struct.uart_cpm_port*, %struct.uart_cpm_port** %4, align 8
  %59 = call i32 @cpm_uart_allocbuf(%struct.uart_cpm_port* %58, i32 0)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* %5, align 4
  store i32 %63, i32* %2, align 4
  br label %77

64:                                               ; preds = %57
  %65 = load %struct.uart_cpm_port*, %struct.uart_cpm_port** %4, align 8
  %66 = call i32 @cpm_uart_initbd(%struct.uart_cpm_port* %65)
  %67 = load %struct.uart_cpm_port*, %struct.uart_cpm_port** %4, align 8
  %68 = call i64 @IS_SMC(%struct.uart_cpm_port* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load %struct.uart_cpm_port*, %struct.uart_cpm_port** %4, align 8
  %72 = call i32 @cpm_uart_init_smc(%struct.uart_cpm_port* %71)
  br label %76

73:                                               ; preds = %64
  %74 = load %struct.uart_cpm_port*, %struct.uart_cpm_port** %4, align 8
  %75 = call i32 @cpm_uart_init_scc(%struct.uart_cpm_port* %74)
  br label %76

76:                                               ; preds = %73, %70
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %76, %62, %18
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i64 @IS_SMC(%struct.uart_cpm_port*) #1

declare dso_local i32 @clrbits8(i32*, i32) #1

declare dso_local i32 @clrbits16(i32*, i32) #1

declare dso_local i32 @clrbits32(i32*, i32) #1

declare dso_local i32 @cpm_uart_allocbuf(%struct.uart_cpm_port*, i32) #1

declare dso_local i32 @cpm_uart_initbd(%struct.uart_cpm_port*) #1

declare dso_local i32 @cpm_uart_init_smc(%struct.uart_cpm_port*) #1

declare dso_local i32 @cpm_uart_init_scc(%struct.uart_cpm_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
