; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba6120.c_qib_6120_xgxs_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba6120.c_qib_6120_xgxs_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { %struct.qib_devdata* }
%struct.qib_devdata = type { i32 }

@kr_xgxs_cfg = common dso_local global i32 0, align 4
@QLOGIC_IB_XGXS_RESET = common dso_local global i32 0, align 4
@kr_control = common dso_local global i32 0, align 4
@QLOGIC_IB_C_LINKENABLE = common dso_local global i32 0, align 4
@kr_scratch = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_pportdata*)* @qib_6120_xgxs_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qib_6120_xgxs_reset(%struct.qib_pportdata* %0) #0 {
  %2 = alloca %struct.qib_pportdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.qib_devdata*, align 8
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %2, align 8
  %6 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %7 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %6, i32 0, i32 0
  %8 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  store %struct.qib_devdata* %8, %struct.qib_devdata** %5, align 8
  %9 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %10 = load i32, i32* @kr_xgxs_cfg, align 4
  %11 = call i32 @qib_read_kreg64(%struct.qib_devdata* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @QLOGIC_IB_XGXS_RESET, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* @QLOGIC_IB_XGXS_RESET, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %4, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %4, align 4
  %19 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %20 = load i32, i32* @kr_control, align 4
  %21 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %22 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @QLOGIC_IB_C_LINKENABLE, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  %27 = call i32 @qib_write_kreg(%struct.qib_devdata* %19, i32 %20, i32 %26)
  %28 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %29 = load i32, i32* @kr_xgxs_cfg, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @qib_write_kreg(%struct.qib_devdata* %28, i32 %29, i32 %30)
  %32 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %33 = load i32, i32* @kr_scratch, align 4
  %34 = call i32 @qib_read_kreg32(%struct.qib_devdata* %32, i32 %33)
  %35 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %36 = load i32, i32* @kr_xgxs_cfg, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @qib_write_kreg(%struct.qib_devdata* %35, i32 %36, i32 %37)
  %39 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %40 = load i32, i32* @kr_control, align 4
  %41 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %42 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @qib_write_kreg(%struct.qib_devdata* %39, i32 %40, i32 %43)
  ret void
}

declare dso_local i32 @qib_read_kreg64(%struct.qib_devdata*, i32) #1

declare dso_local i32 @qib_write_kreg(%struct.qib_devdata*, i32, i32) #1

declare dso_local i32 @qib_read_kreg32(%struct.qib_devdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
