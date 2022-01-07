; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-netx/extr_xc.c_xc_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-netx/extr_xc.c_xc_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xc = type { i64, i64 }

@RPU_HOLD_PC = common dso_local global i32 0, align 4
@NETX_XMAC_RPU_HOLD_PC_OFS = common dso_local global i64 0, align 8
@TPU_HOLD_PC = common dso_local global i32 0, align 4
@NETX_XMAC_TPU_HOLD_PC_OFS = common dso_local global i64 0, align 8
@XPU_HOLD_PC = common dso_local global i32 0, align 4
@NETX_XPEC_XPU_HOLD_PC_OFS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xc_stop(%struct.xc* %0) #0 {
  %2 = alloca %struct.xc*, align 8
  store %struct.xc* %0, %struct.xc** %2, align 8
  %3 = load i32, i32* @RPU_HOLD_PC, align 4
  %4 = load %struct.xc*, %struct.xc** %2, align 8
  %5 = getelementptr inbounds %struct.xc, %struct.xc* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @NETX_XMAC_RPU_HOLD_PC_OFS, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @writel(i32 %3, i64 %8)
  %10 = load i32, i32* @TPU_HOLD_PC, align 4
  %11 = load %struct.xc*, %struct.xc** %2, align 8
  %12 = getelementptr inbounds %struct.xc, %struct.xc* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @NETX_XMAC_TPU_HOLD_PC_OFS, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @writel(i32 %10, i64 %15)
  %17 = load i32, i32* @XPU_HOLD_PC, align 4
  %18 = load %struct.xc*, %struct.xc** %2, align 8
  %19 = getelementptr inbounds %struct.xc, %struct.xc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @NETX_XPEC_XPU_HOLD_PC_OFS, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @writel(i32 %17, i64 %22)
  ret i32 0
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
