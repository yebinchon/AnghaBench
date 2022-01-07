; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/cpm_uart/extr_cpm_uart_core.c_cpm_uart_startup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/cpm_uart/extr_cpm_uart_core.c_cpm_uart_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32 }
%struct.uart_cpm_port = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"CPM uart[%d]:startup\0A\00", align 1
@FLAG_CONSOLE = common dso_local global i32 0, align 4
@SMCMR_REN = common dso_local global i32 0, align 4
@SMCM_RX = common dso_local global i32 0, align 4
@SCC_GSMRL_ENR = common dso_local global i32 0, align 4
@UART_SCCM_RX = common dso_local global i32 0, align 4
@CPM_CR_INIT_TRX = common dso_local global i32 0, align 4
@cpm_uart_int = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"cpm_uart\00", align 1
@SMCMR_TEN = common dso_local global i32 0, align 4
@SCC_GSMRL_ENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @cpm_uart_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpm_uart_startup(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uart_cpm_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %7 = bitcast %struct.uart_port* %6 to %struct.uart_cpm_port*
  store %struct.uart_cpm_port* %7, %struct.uart_cpm_port** %5, align 8
  %8 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %9 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.uart_cpm_port*, %struct.uart_cpm_port** %5, align 8
  %13 = getelementptr inbounds %struct.uart_cpm_port, %struct.uart_cpm_port* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @FLAG_CONSOLE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %52, label %18

18:                                               ; preds = %1
  %19 = load %struct.uart_cpm_port*, %struct.uart_cpm_port** %5, align 8
  %20 = call i64 @IS_SMC(%struct.uart_cpm_port* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %18
  %23 = load %struct.uart_cpm_port*, %struct.uart_cpm_port** %5, align 8
  %24 = getelementptr inbounds %struct.uart_cpm_port, %struct.uart_cpm_port* %23, i32 0, i32 2
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* @SMCMR_REN, align 4
  %28 = call i32 @clrbits16(i32* %26, i32 %27)
  %29 = load %struct.uart_cpm_port*, %struct.uart_cpm_port** %5, align 8
  %30 = getelementptr inbounds %struct.uart_cpm_port, %struct.uart_cpm_port* %29, i32 0, i32 2
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* @SMCM_RX, align 4
  %34 = call i32 @clrbits8(i32* %32, i32 %33)
  br label %48

35:                                               ; preds = %18
  %36 = load %struct.uart_cpm_port*, %struct.uart_cpm_port** %5, align 8
  %37 = getelementptr inbounds %struct.uart_cpm_port, %struct.uart_cpm_port* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* @SCC_GSMRL_ENR, align 4
  %41 = call i32 @clrbits32(i32* %39, i32 %40)
  %42 = load %struct.uart_cpm_port*, %struct.uart_cpm_port** %5, align 8
  %43 = getelementptr inbounds %struct.uart_cpm_port, %struct.uart_cpm_port* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32, i32* @UART_SCCM_RX, align 4
  %47 = call i32 @clrbits16(i32* %45, i32 %46)
  br label %48

48:                                               ; preds = %35, %22
  %49 = load %struct.uart_cpm_port*, %struct.uart_cpm_port** %5, align 8
  %50 = load i32, i32* @CPM_CR_INIT_TRX, align 4
  %51 = call i32 @cpm_line_cr_cmd(%struct.uart_cpm_port* %49, i32 %50)
  br label %52

52:                                               ; preds = %48, %1
  %53 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %54 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @cpm_uart_int, align 4
  %57 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %58 = call i32 @request_irq(i32 %55, i32 %56, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %struct.uart_port* %57)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %52
  %62 = load i32, i32* %4, align 4
  store i32 %62, i32* %2, align 4
  br label %98

63:                                               ; preds = %52
  %64 = load %struct.uart_cpm_port*, %struct.uart_cpm_port** %5, align 8
  %65 = call i64 @IS_SMC(%struct.uart_cpm_port* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %82

67:                                               ; preds = %63
  %68 = load %struct.uart_cpm_port*, %struct.uart_cpm_port** %5, align 8
  %69 = getelementptr inbounds %struct.uart_cpm_port, %struct.uart_cpm_port* %68, i32 0, i32 2
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i32, i32* @SMCM_RX, align 4
  %73 = call i32 @setbits8(i32* %71, i32 %72)
  %74 = load %struct.uart_cpm_port*, %struct.uart_cpm_port** %5, align 8
  %75 = getelementptr inbounds %struct.uart_cpm_port, %struct.uart_cpm_port* %74, i32 0, i32 2
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* @SMCMR_REN, align 4
  %79 = load i32, i32* @SMCMR_TEN, align 4
  %80 = or i32 %78, %79
  %81 = call i32 @setbits16(i32* %77, i32 %80)
  br label %97

82:                                               ; preds = %63
  %83 = load %struct.uart_cpm_port*, %struct.uart_cpm_port** %5, align 8
  %84 = getelementptr inbounds %struct.uart_cpm_port, %struct.uart_cpm_port* %83, i32 0, i32 1
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i32, i32* @UART_SCCM_RX, align 4
  %88 = call i32 @setbits16(i32* %86, i32 %87)
  %89 = load %struct.uart_cpm_port*, %struct.uart_cpm_port** %5, align 8
  %90 = getelementptr inbounds %struct.uart_cpm_port, %struct.uart_cpm_port* %89, i32 0, i32 1
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* @SCC_GSMRL_ENR, align 4
  %94 = load i32, i32* @SCC_GSMRL_ENT, align 4
  %95 = or i32 %93, %94
  %96 = call i32 @setbits32(i32* %92, i32 %95)
  br label %97

97:                                               ; preds = %82, %67
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %97, %61
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i64 @IS_SMC(%struct.uart_cpm_port*) #1

declare dso_local i32 @clrbits16(i32*, i32) #1

declare dso_local i32 @clrbits8(i32*, i32) #1

declare dso_local i32 @clrbits32(i32*, i32) #1

declare dso_local i32 @cpm_line_cr_cmd(%struct.uart_cpm_port*, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.uart_port*) #1

declare dso_local i32 @setbits8(i32*, i32) #1

declare dso_local i32 @setbits16(i32*, i32) #1

declare dso_local i32 @setbits32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
