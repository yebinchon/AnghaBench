; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_68360serial.c_rs_360_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_68360serial.c_rs_360_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.smc_regs*, %struct.scc_regs* }
%struct.smc_regs = type { i32 }
%struct.scc_regs = type { i32 }
%struct.tty_struct = type { i32, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"rs_stop\00", align 1
@NUM_IS_SCC = common dso_local global i32 0, align 4
@pquicc = common dso_local global %struct.TYPE_7__* null, align 8
@UART_SCCM_TX = common dso_local global i32 0, align 4
@SMCM_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @rs_360_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_360_start(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.scc_regs*, align 8
  %7 = alloca %struct.smc_regs*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %8 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %3, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %14 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @serial_paranoia_check(%struct.TYPE_6__* %12, i32 %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %63

19:                                               ; preds = %1
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @local_irq_save(i64 %20)
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @PORT_NUM(i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @NUM_IS_SCC, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %19
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pquicc, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load %struct.scc_regs*, %struct.scc_regs** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.scc_regs, %struct.scc_regs* %39, i64 %41
  store %struct.scc_regs* %42, %struct.scc_regs** %6, align 8
  %43 = load i32, i32* @UART_SCCM_TX, align 4
  %44 = load %struct.scc_regs*, %struct.scc_regs** %6, align 8
  %45 = getelementptr inbounds %struct.scc_regs, %struct.scc_regs* %44, i32 0, i32 0
  %46 = load volatile i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store volatile i32 %47, i32* %45, align 4
  br label %60

48:                                               ; preds = %19
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pquicc, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load %struct.smc_regs*, %struct.smc_regs** %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.smc_regs, %struct.smc_regs* %51, i64 %53
  store %struct.smc_regs* %54, %struct.smc_regs** %7, align 8
  %55 = load i32, i32* @SMCM_TX, align 4
  %56 = load %struct.smc_regs*, %struct.smc_regs** %7, align 8
  %57 = getelementptr inbounds %struct.smc_regs, %struct.smc_regs* %56, i32 0, i32 0
  %58 = load volatile i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store volatile i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %48, %36
  %61 = load i64, i64* %5, align 8
  %62 = call i32 @local_irq_restore(i64 %61)
  br label %63

63:                                               ; preds = %60, %18
  ret void
}

declare dso_local i64 @serial_paranoia_check(%struct.TYPE_6__*, i32, i8*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @PORT_NUM(i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
