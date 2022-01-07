; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_68360serial.c_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_68360serial.c_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.smc_regs*, %struct.scc_regs* }
%struct.smc_regs = type { i32, i32 }
%struct.scc_regs = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.serial_state = type { i32, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__, i32, %struct.serial_state* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@ASYNC_INITIALIZED = common dso_local global i32 0, align 4
@NUM_IS_SCC = common dso_local global i32 0, align 4
@pquicc = common dso_local global %struct.TYPE_13__* null, align 8
@SCC_GSMRL_ENR = common dso_local global i32 0, align 4
@SCC_GSMRL_ENT = common dso_local global i32 0, align 4
@UART_SCCM_TX = common dso_local global i32 0, align 4
@UART_SCCM_RX = common dso_local global i32 0, align 4
@SMCM_RX = common dso_local global i32 0, align 4
@SMCM_TX = common dso_local global i32 0, align 4
@SMCMR_REN = common dso_local global i32 0, align 4
@SMCMR_TEN = common dso_local global i32 0, align 4
@TTY_IO_ERROR = common dso_local global i32 0, align 4
@CONFIG_SERIAL_CONSOLE_PORT = common dso_local global i32 0, align 4
@rs_table = common dso_local global %struct.serial_state* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*)* @shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shutdown(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.serial_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.smc_regs*, align 8
  %7 = alloca %struct.scc_regs*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @ASYNC_INITIALIZED, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %102

15:                                               ; preds = %1
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 3
  %18 = load %struct.serial_state*, %struct.serial_state** %17, align 8
  store %struct.serial_state* %18, %struct.serial_state** %4, align 8
  %19 = load i64, i64* %3, align 8
  %20 = call i32 @local_irq_save(i64 %19)
  %21 = load %struct.serial_state*, %struct.serial_state** %4, align 8
  %22 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @PORT_NUM(i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load %struct.serial_state*, %struct.serial_state** %4, align 8
  %26 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @NUM_IS_SCC, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %56

31:                                               ; preds = %15
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pquicc, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 1
  %34 = load %struct.scc_regs*, %struct.scc_regs** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.scc_regs, %struct.scc_regs* %34, i64 %36
  store %struct.scc_regs* %37, %struct.scc_regs** %7, align 8
  %38 = load i32, i32* @SCC_GSMRL_ENR, align 4
  %39 = load i32, i32* @SCC_GSMRL_ENT, align 4
  %40 = or i32 %38, %39
  %41 = xor i32 %40, -1
  %42 = load %struct.scc_regs*, %struct.scc_regs** %7, align 8
  %43 = getelementptr inbounds %struct.scc_regs, %struct.scc_regs* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load volatile i32, i32* %45, align 4
  %47 = and i32 %46, %41
  store volatile i32 %47, i32* %45, align 4
  %48 = load i32, i32* @UART_SCCM_TX, align 4
  %49 = load i32, i32* @UART_SCCM_RX, align 4
  %50 = or i32 %48, %49
  %51 = xor i32 %50, -1
  %52 = load %struct.scc_regs*, %struct.scc_regs** %7, align 8
  %53 = getelementptr inbounds %struct.scc_regs, %struct.scc_regs* %52, i32 0, i32 0
  %54 = load volatile i32, i32* %53, align 4
  %55 = and i32 %54, %51
  store volatile i32 %55, i32* %53, align 4
  br label %79

56:                                               ; preds = %15
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pquicc, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load %struct.smc_regs*, %struct.smc_regs** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.smc_regs, %struct.smc_regs* %59, i64 %61
  store %struct.smc_regs* %62, %struct.smc_regs** %6, align 8
  %63 = load i32, i32* @SMCM_RX, align 4
  %64 = load i32, i32* @SMCM_TX, align 4
  %65 = or i32 %63, %64
  %66 = xor i32 %65, -1
  %67 = load %struct.smc_regs*, %struct.smc_regs** %6, align 8
  %68 = getelementptr inbounds %struct.smc_regs, %struct.smc_regs* %67, i32 0, i32 0
  %69 = load volatile i32, i32* %68, align 4
  %70 = and i32 %69, %66
  store volatile i32 %70, i32* %68, align 4
  %71 = load i32, i32* @SMCMR_REN, align 4
  %72 = load i32, i32* @SMCMR_TEN, align 4
  %73 = or i32 %71, %72
  %74 = xor i32 %73, -1
  %75 = load %struct.smc_regs*, %struct.smc_regs** %6, align 8
  %76 = getelementptr inbounds %struct.smc_regs, %struct.smc_regs* %75, i32 0, i32 1
  %77 = load volatile i32, i32* %76, align 4
  %78 = and i32 %77, %74
  store volatile i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %56, %31
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %82, align 8
  %84 = icmp ne %struct.TYPE_10__* %83, null
  br i1 %84, label %85, label %93

85:                                               ; preds = %79
  %86 = load i32, i32* @TTY_IO_ERROR, align 4
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = call i32 @set_bit(i32 %86, i32* %91)
  br label %93

93:                                               ; preds = %85, %79
  %94 = load i32, i32* @ASYNC_INITIALIZED, align 4
  %95 = xor i32 %94, -1
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = and i32 %98, %95
  store i32 %99, i32* %97, align 8
  %100 = load i64, i64* %3, align 8
  %101 = call i32 @local_irq_restore(i64 %100)
  br label %102

102:                                              ; preds = %93, %14
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @PORT_NUM(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
