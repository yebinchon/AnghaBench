; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_68360serial.c_startup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_68360serial.c_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_19__*, %struct.smc_regs*, %struct.scc_regs* }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_32__, %struct.TYPE_27__ }
%struct.TYPE_32__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { %struct.smc_uart_pram }
%struct.smc_uart_pram = type { i32, i8*, i8* }
%struct.TYPE_27__ = type { %struct.uart_pram }
%struct.uart_pram = type { i8*, i8* }
%struct.smc_regs = type { i32, i32 }
%struct.scc_regs = type { i32, %struct.TYPE_29__ }
%struct.TYPE_29__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_22__ = type { i32, i32, i32 }
%struct.TYPE_21__ = type { i32, i32, %struct.TYPE_20__*, %struct.TYPE_26__, i32 }
%struct.TYPE_20__ = type { i32, i64 }
%struct.TYPE_26__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32 }

@ASYNC_INITIALIZED = common dso_local global i32 0, align 4
@TTY_IO_ERROR = common dso_local global i32 0, align 4
@NUM_IS_SCC = common dso_local global i32 0, align 4
@pquicc = common dso_local global %struct.TYPE_23__* null, align 8
@RX_BUF_SIZE = common dso_local global i8* null, align 8
@UART_SCCM_TX = common dso_local global i32 0, align 4
@UART_SCCM_RX = common dso_local global i32 0, align 4
@SCC_GSMRL_ENR = common dso_local global i32 0, align 4
@SCC_GSMRL_ENT = common dso_local global i32 0, align 4
@SMCM_RX = common dso_local global i32 0, align 4
@SMCM_TX = common dso_local global i32 0, align 4
@SMCMR_REN = common dso_local global i32 0, align 4
@SMCMR_TEN = common dso_local global i32 0, align 4
@CBAUD = common dso_local global i32 0, align 4
@UART_MCR_DTR = common dso_local global i32 0, align 4
@UART_MCR_RTS = common dso_local global i32 0, align 4
@state = common dso_local global %struct.TYPE_22__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*)* @startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @startup(%struct.TYPE_21__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.smc_regs*, align 8
  %8 = alloca %struct.scc_regs*, align 8
  %9 = alloca %struct.smc_uart_pram*, align 8
  %10 = alloca %struct.uart_pram*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  store i32 0, i32* %5, align 4
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @local_irq_save(i64 %11)
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @ASYNC_INITIALIZED, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %143

20:                                               ; preds = %1
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_25__*, %struct.TYPE_25__** %23, align 8
  %25 = icmp ne %struct.TYPE_25__* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %20
  %27 = load i32, i32* @TTY_IO_ERROR, align 4
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %31, i32 0, i32 0
  %33 = call i32 @clear_bit(i32 %27, i32* %32)
  br label %34

34:                                               ; preds = %26, %20
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %36 = call i32 @change_speed(%struct.TYPE_21__* %35)
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @PORT_NUM(i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @NUM_IS_SCC, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %92

51:                                               ; preds = %34
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** @pquicc, align 8
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i32 0, i32 2
  %54 = load %struct.scc_regs*, %struct.scc_regs** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.scc_regs, %struct.scc_regs* %54, i64 %56
  store %struct.scc_regs* %57, %struct.scc_regs** %8, align 8
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** @pquicc, align 8
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %59, align 8
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %68, i32 0, i32 0
  store %struct.uart_pram* %69, %struct.uart_pram** %10, align 8
  %70 = load i8*, i8** @RX_BUF_SIZE, align 8
  %71 = load %struct.uart_pram*, %struct.uart_pram** %10, align 8
  %72 = getelementptr inbounds %struct.uart_pram, %struct.uart_pram* %71, i32 0, i32 1
  store volatile i8* %70, i8** %72, align 8
  %73 = load i8*, i8** @RX_BUF_SIZE, align 8
  %74 = load %struct.uart_pram*, %struct.uart_pram** %10, align 8
  %75 = getelementptr inbounds %struct.uart_pram, %struct.uart_pram* %74, i32 0, i32 0
  store volatile i8* %73, i8** %75, align 8
  %76 = load i32, i32* @UART_SCCM_TX, align 4
  %77 = load i32, i32* @UART_SCCM_RX, align 4
  %78 = or i32 %76, %77
  %79 = load %struct.scc_regs*, %struct.scc_regs** %8, align 8
  %80 = getelementptr inbounds %struct.scc_regs, %struct.scc_regs* %79, i32 0, i32 0
  %81 = load volatile i32, i32* %80, align 4
  %82 = or i32 %81, %78
  store volatile i32 %82, i32* %80, align 4
  %83 = load i32, i32* @SCC_GSMRL_ENR, align 4
  %84 = load i32, i32* @SCC_GSMRL_ENT, align 4
  %85 = or i32 %83, %84
  %86 = load %struct.scc_regs*, %struct.scc_regs** %8, align 8
  %87 = getelementptr inbounds %struct.scc_regs, %struct.scc_regs* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %88, i32 0, i32 0
  %90 = load volatile i32, i32* %89, align 4
  %91 = or i32 %90, %85
  store volatile i32 %91, i32* %89, align 4
  br label %135

92:                                               ; preds = %34
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** @pquicc, align 8
  %94 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %93, i32 0, i32 1
  %95 = load %struct.smc_regs*, %struct.smc_regs** %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.smc_regs, %struct.smc_regs* %95, i64 %97
  store %struct.smc_regs* %98, %struct.smc_regs** %7, align 8
  %99 = load i32, i32* @SMCM_RX, align 4
  %100 = load i32, i32* @SMCM_TX, align 4
  %101 = or i32 %99, %100
  %102 = load %struct.smc_regs*, %struct.smc_regs** %7, align 8
  %103 = getelementptr inbounds %struct.smc_regs, %struct.smc_regs* %102, i32 0, i32 0
  %104 = load volatile i32, i32* %103, align 4
  %105 = or i32 %104, %101
  store volatile i32 %105, i32* %103, align 4
  %106 = load i32, i32* @SMCMR_REN, align 4
  %107 = load i32, i32* @SMCMR_TEN, align 4
  %108 = or i32 %106, %107
  %109 = load %struct.smc_regs*, %struct.smc_regs** %7, align 8
  %110 = getelementptr inbounds %struct.smc_regs, %struct.smc_regs* %109, i32 0, i32 1
  %111 = load volatile i32, i32* %110, align 4
  %112 = or i32 %111, %108
  store volatile i32 %112, i32* %110, align 4
  %113 = load %struct.TYPE_23__*, %struct.TYPE_23__** @pquicc, align 8
  %114 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %114, align 8
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %116, i32 0, i32 2
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %125, i32 0, i32 0
  store %struct.smc_uart_pram* %126, %struct.smc_uart_pram** %9, align 8
  %127 = load i8*, i8** @RX_BUF_SIZE, align 8
  %128 = load %struct.smc_uart_pram*, %struct.smc_uart_pram** %9, align 8
  %129 = getelementptr inbounds %struct.smc_uart_pram, %struct.smc_uart_pram* %128, i32 0, i32 2
  store volatile i8* %127, i8** %129, align 8
  %130 = load i8*, i8** @RX_BUF_SIZE, align 8
  %131 = load %struct.smc_uart_pram*, %struct.smc_uart_pram** %9, align 8
  %132 = getelementptr inbounds %struct.smc_uart_pram, %struct.smc_uart_pram* %131, i32 0, i32 1
  store volatile i8* %130, i8** %132, align 8
  %133 = load %struct.smc_uart_pram*, %struct.smc_uart_pram** %9, align 8
  %134 = getelementptr inbounds %struct.smc_uart_pram, %struct.smc_uart_pram* %133, i32 0, i32 0
  store volatile i32 1, i32* %134, align 8
  br label %135

135:                                              ; preds = %92, %51
  %136 = load i32, i32* @ASYNC_INITIALIZED, align 4
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = or i32 %139, %136
  store i32 %140, i32* %138, align 8
  %141 = load i64, i64* %4, align 8
  %142 = call i32 @local_irq_restore(i64 %141)
  store i32 0, i32* %2, align 4
  br label %147

143:                                              ; preds = %19
  %144 = load i64, i64* %4, align 8
  %145 = call i32 @local_irq_restore(i64 %144)
  %146 = load i32, i32* %5, align 4
  store i32 %146, i32* %2, align 4
  br label %147

147:                                              ; preds = %143, %135
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @change_speed(%struct.TYPE_21__*) #1

declare dso_local i32 @PORT_NUM(i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
