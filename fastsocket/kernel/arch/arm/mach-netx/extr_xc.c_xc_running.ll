; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-netx/extr_xc.c_xc_running.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-netx/extr_xc.c_xc_running.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xc = type { i64, i64 }

@NETX_XMAC_RPU_HOLD_PC_OFS = common dso_local global i64 0, align 8
@RPU_HOLD_PC = common dso_local global i32 0, align 4
@NETX_XMAC_TPU_HOLD_PC_OFS = common dso_local global i64 0, align 8
@TPU_HOLD_PC = common dso_local global i32 0, align 4
@NETX_XPEC_XPU_HOLD_PC_OFS = common dso_local global i64 0, align 8
@XPU_HOLD_PC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xc_running(%struct.xc* %0) #0 {
  %2 = alloca %struct.xc*, align 8
  store %struct.xc* %0, %struct.xc** %2, align 8
  %3 = load %struct.xc*, %struct.xc** %2, align 8
  %4 = getelementptr inbounds %struct.xc, %struct.xc* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @NETX_XMAC_RPU_HOLD_PC_OFS, align 8
  %7 = add nsw i64 %5, %6
  %8 = call i32 @readl(i64 %7)
  %9 = load i32, i32* @RPU_HOLD_PC, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %32, label %12

12:                                               ; preds = %1
  %13 = load %struct.xc*, %struct.xc** %2, align 8
  %14 = getelementptr inbounds %struct.xc, %struct.xc* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @NETX_XMAC_TPU_HOLD_PC_OFS, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @readl(i64 %17)
  %19 = load i32, i32* @TPU_HOLD_PC, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %12
  %23 = load %struct.xc*, %struct.xc** %2, align 8
  %24 = getelementptr inbounds %struct.xc, %struct.xc* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @NETX_XPEC_XPU_HOLD_PC_OFS, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @readl(i64 %27)
  %29 = load i32, i32* @XPU_HOLD_PC, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br label %32

32:                                               ; preds = %22, %12, %1
  %33 = phi i1 [ true, %12 ], [ true, %1 ], [ %31, %22 ]
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 0, i32 1
  ret i32 %35
}

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
