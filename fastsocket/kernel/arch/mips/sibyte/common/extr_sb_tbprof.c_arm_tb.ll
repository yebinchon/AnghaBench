; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sibyte/common/extr_sb_tbprof.c_arm_tb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sibyte/common/extr_sb_tbprof.c_arm_tb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@tb_period = common dso_local global i32 0, align 4
@M_SCD_TRACE_CFG_FREEZE_FULL = common dso_local global i32 0, align 4
@A_SCD_PERF_CNT_1 = common dso_local global i32 0, align 4
@A_SCD_PERF_CNT_CFG = common dso_local global i32 0, align 4
@M_SPC_CFG_SRC1 = common dso_local global i32 0, align 4
@M_SPC_CFG_ENABLE = common dso_local global i32 0, align 4
@M_SPC_CFG_CLEAR = common dso_local global i32 0, align 4
@M_SCD_TRACE_CFG_RESET = common dso_local global i32 0, align 4
@A_SCD_TRACE_CFG = common dso_local global i32 0, align 4
@sbp = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@A_BCM1480_SCD_PERF_CNT_CFG0 = common dso_local global i32 0, align 4
@A_BCM1480_SCD_PERF_CNT_CFG1 = common dso_local global i32 0, align 4
@M_SCD_TRACE_CFG_FORCECNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @arm_tb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm_tb() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @tb_period, align 4
  %5 = sext i32 %4 to i64
  %6 = sub i64 1099511627776, %5
  %7 = trunc i64 %6 to i32
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* @M_SCD_TRACE_CFG_FREEZE_FULL, align 4
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @A_SCD_PERF_CNT_1, align 4
  %10 = call i32 @IOADDR(i32 %9)
  %11 = call i32 @__raw_writeq(i32 0, i32 %10)
  %12 = load i32, i32* @A_SCD_PERF_CNT_CFG, align 4
  %13 = call i32 @IOADDR(i32 %12)
  %14 = call i32 @__raw_readq(i32 %13)
  store i32 %14, i32* %1, align 4
  %15 = load i32, i32* %1, align 4
  %16 = load i32, i32* @M_SPC_CFG_SRC1, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  %19 = load i32, i32* @M_SPC_CFG_ENABLE, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @M_SPC_CFG_CLEAR, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @V_SPC_CFG_SRC1(i32 1)
  %24 = or i32 %22, %23
  %25 = load i32, i32* @A_SCD_PERF_CNT_CFG, align 4
  %26 = call i32 @IOADDR(i32 %25)
  %27 = call i32 @__raw_writeq(i32 %24, i32 %26)
  %28 = load i32, i32* %2, align 4
  %29 = load i32, i32* @A_SCD_PERF_CNT_1, align 4
  %30 = call i32 @IOADDR(i32 %29)
  %31 = call i32 @__raw_writeq(i32 %28, i32 %30)
  %32 = load i32, i32* @M_SCD_TRACE_CFG_RESET, align 4
  %33 = load i32, i32* @A_SCD_TRACE_CFG, align 4
  %34 = call i32 @IOADDR(i32 %33)
  %35 = call i32 @__raw_writeq(i32 %32, i32 %34)
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @A_SCD_TRACE_CFG, align 4
  %38 = call i32 @IOADDR(i32 %37)
  %39 = call i32 @__raw_writeq(i32 %36, i32 %38)
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sbp, i32 0, i32 0), align 4
  ret void
}

declare dso_local i32 @__raw_writeq(i32, i32) #1

declare dso_local i32 @IOADDR(i32) #1

declare dso_local i32 @__raw_readq(i32) #1

declare dso_local i32 @V_SPC_CFG_SRC1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
