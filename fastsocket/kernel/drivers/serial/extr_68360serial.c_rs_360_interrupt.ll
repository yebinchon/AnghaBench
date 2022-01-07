; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_68360serial.c_rs_360_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_68360serial.c_rs_360_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.smc_regs*, %struct.scc_regs* }
%struct.smc_regs = type { i32 }
%struct.scc_regs = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@NUM_IS_SCC = common dso_local global i32 0, align 4
@pquicc = common dso_local global %struct.TYPE_10__* null, align 8
@SCCM_RX = common dso_local global i32 0, align 4
@SCCM_TX = common dso_local global i32 0, align 4
@SMCM_BRKE = common dso_local global i32 0, align 4
@SMCM_RX = common dso_local global i32 0, align 4
@SMCM_TX = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @rs_360_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_360_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.smc_regs*, align 8
  %9 = alloca %struct.scc_regs*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %7, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @PORT_NUM(i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @NUM_IS_SCC, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %55

26:                                               ; preds = %2
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** @pquicc, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  %29 = load %struct.scc_regs*, %struct.scc_regs** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.scc_regs, %struct.scc_regs* %29, i64 %31
  store %struct.scc_regs* %32, %struct.scc_regs** %9, align 8
  %33 = load %struct.scc_regs*, %struct.scc_regs** %9, align 8
  %34 = getelementptr inbounds %struct.scc_regs, %struct.scc_regs* %33, i32 0, i32 0
  %35 = load volatile i32, i32* %34, align 4
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @SCCM_RX, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %26
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %42 = call i32 @receive_chars(%struct.TYPE_9__* %41)
  br label %43

43:                                               ; preds = %40, %26
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @SCCM_TX, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %50 = call i32 @transmit_chars(%struct.TYPE_9__* %49)
  br label %51

51:                                               ; preds = %48, %43
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.scc_regs*, %struct.scc_regs** %9, align 8
  %54 = getelementptr inbounds %struct.scc_regs, %struct.scc_regs* %53, i32 0, i32 0
  store volatile i32 %52, i32* %54, align 4
  br label %92

55:                                               ; preds = %2
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** @pquicc, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load %struct.smc_regs*, %struct.smc_regs** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.smc_regs, %struct.smc_regs* %58, i64 %60
  store %struct.smc_regs* %61, %struct.smc_regs** %8, align 8
  %62 = load %struct.smc_regs*, %struct.smc_regs** %8, align 8
  %63 = getelementptr inbounds %struct.smc_regs, %struct.smc_regs* %62, i32 0, i32 0
  %64 = load volatile i32, i32* %63, align 4
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @SMCM_BRKE, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %55
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %71 = call i32 @receive_break(%struct.TYPE_9__* %70)
  br label %72

72:                                               ; preds = %69, %55
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @SMCM_RX, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %79 = call i32 @receive_chars(%struct.TYPE_9__* %78)
  br label %80

80:                                               ; preds = %77, %72
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @SMCM_TX, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %87 = call i32 @transmit_chars(%struct.TYPE_9__* %86)
  br label %88

88:                                               ; preds = %85, %80
  %89 = load i32, i32* %5, align 4
  %90 = load %struct.smc_regs*, %struct.smc_regs** %8, align 8
  %91 = getelementptr inbounds %struct.smc_regs, %struct.smc_regs* %90, i32 0, i32 0
  store volatile i32 %89, i32* %91, align 4
  br label %92

92:                                               ; preds = %88, %51
  %93 = load i32, i32* @jiffies, align 4
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  ret void
}

declare dso_local i32 @PORT_NUM(i32) #1

declare dso_local i32 @receive_chars(%struct.TYPE_9__*) #1

declare dso_local i32 @transmit_chars(%struct.TYPE_9__*) #1

declare dso_local i32 @receive_break(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
