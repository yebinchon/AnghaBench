; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_pmac_zilog.c_pmz_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_pmac_zilog.c_pmz_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.uart_pmac_port = type { i32*, i32, i32, %struct.TYPE_3__, i32* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"pmz: shutdown()\0A\00", align 1
@pmz_irq_mutex = common dso_local global i32 0, align 4
@PMACZILOG_FLAG_IS_OPEN = common dso_local global i32 0, align 4
@PMACZILOG_FLAG_IS_IRQ_ON = common dso_local global i32 0, align 4
@EXT_INT_ENAB = common dso_local global i32 0, align 4
@TxINT_ENAB = common dso_local global i32 0, align 4
@RxINT_MASK = common dso_local global i32 0, align 4
@R1 = common dso_local global i64 0, align 8
@RxENABLE = common dso_local global i32 0, align 4
@R3 = common dso_local global i64 0, align 8
@TxENABLE = common dso_local global i32 0, align 4
@R5 = common dso_local global i64 0, align 8
@SND_BRK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"pmz: shutdown() done.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @pmz_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmz_shutdown(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.uart_pmac_port*, align 8
  %4 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %5 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %6 = call %struct.uart_pmac_port* @to_pmz(%struct.uart_port* %5)
  store %struct.uart_pmac_port* %6, %struct.uart_pmac_port** %3, align 8
  %7 = call i32 @pmz_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %9 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %8, i32 0, i32 4
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %125

13:                                               ; preds = %1
  %14 = call i32 @mutex_lock(i32* @pmz_irq_mutex)
  %15 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %16 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %20 = call i32 @free_irq(i32 %18, %struct.uart_pmac_port* %19)
  %21 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %22 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %21, i32 0, i32 0
  %23 = load i64, i64* %4, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load i32, i32* @PMACZILOG_FLAG_IS_OPEN, align 4
  %26 = xor i32 %25, -1
  %27 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %28 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %32 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @ZS_IS_OPEN(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %13
  %37 = load i32, i32* @PMACZILOG_FLAG_IS_IRQ_ON, align 4
  %38 = xor i32 %37, -1
  %39 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %40 = call %struct.TYPE_4__* @pmz_get_port_A(%struct.uart_pmac_port* %39)
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, %38
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %36, %13
  %45 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %46 = call i64 @ZS_IS_ASLEEP(%struct.uart_pmac_port* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %73, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* @EXT_INT_ENAB, align 4
  %50 = load i32, i32* @TxINT_ENAB, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @RxINT_MASK, align 4
  %53 = or i32 %51, %52
  %54 = xor i32 %53, -1
  %55 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %56 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* @R1, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, %54
  store i32 %61, i32* %59, align 4
  %62 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %63 = load i64, i64* @R1, align 8
  %64 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %65 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* @R1, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @write_zsreg(%struct.uart_pmac_port* %62, i64 %63, i32 %69)
  %71 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %72 = call i32 @zssync(%struct.uart_pmac_port* %71)
  br label %73

73:                                               ; preds = %48, %44
  %74 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %75 = call i64 @ZS_IS_CONS(%struct.uart_pmac_port* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %73
  %78 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %79 = call i64 @ZS_IS_ASLEEP(%struct.uart_pmac_port* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %77, %73
  %82 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %83 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %82, i32 0, i32 0
  %84 = load i64, i64* %4, align 8
  %85 = call i32 @spin_unlock_irqrestore(i32* %83, i64 %84)
  %86 = call i32 @mutex_unlock(i32* @pmz_irq_mutex)
  br label %125

87:                                               ; preds = %77
  %88 = load i32, i32* @RxENABLE, align 4
  %89 = xor i32 %88, -1
  %90 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %91 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i64, i64* @R3, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, %89
  store i32 %96, i32* %94, align 4
  %97 = load i32, i32* @TxENABLE, align 4
  %98 = xor i32 %97, -1
  %99 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %100 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load i64, i64* @R5, align 8
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, %98
  store i32 %105, i32* %103, align 4
  %106 = load i32, i32* @SND_BRK, align 4
  %107 = xor i32 %106, -1
  %108 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %109 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = load i64, i64* @R5, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = and i32 %113, %107
  store i32 %114, i32* %112, align 4
  %115 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %116 = call i32 @pmz_maybe_update_regs(%struct.uart_pmac_port* %115)
  %117 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %118 = call i32 @pmz_set_scc_power(%struct.uart_pmac_port* %117, i32 0)
  %119 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %120 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %119, i32 0, i32 0
  %121 = load i64, i64* %4, align 8
  %122 = call i32 @spin_unlock_irqrestore(i32* %120, i64 %121)
  %123 = call i32 @mutex_unlock(i32* @pmz_irq_mutex)
  %124 = call i32 @pmz_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %125

125:                                              ; preds = %87, %81, %12
  ret void
}

declare dso_local %struct.uart_pmac_port* @to_pmz(%struct.uart_port*) #1

declare dso_local i32 @pmz_debug(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @free_irq(i32, %struct.uart_pmac_port*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ZS_IS_OPEN(i32) #1

declare dso_local %struct.TYPE_4__* @pmz_get_port_A(%struct.uart_pmac_port*) #1

declare dso_local i64 @ZS_IS_ASLEEP(%struct.uart_pmac_port*) #1

declare dso_local i32 @write_zsreg(%struct.uart_pmac_port*, i64, i32) #1

declare dso_local i32 @zssync(%struct.uart_pmac_port*) #1

declare dso_local i64 @ZS_IS_CONS(%struct.uart_pmac_port*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pmz_maybe_update_regs(%struct.uart_pmac_port*) #1

declare dso_local i32 @pmz_set_scc_power(%struct.uart_pmac_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
