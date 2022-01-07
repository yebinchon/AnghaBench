; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7322.c_qib_7322_sdma_hw_start_up.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7322.c_qib_7322_sdma_hw_start_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { %struct.TYPE_2__, i64* }
%struct.TYPE_2__ = type { i32 }

@QIB_SENDCTRL_FLUSH = common dso_local global i32 0, align 4
@QIB_SDMA_SENDCTRL_OP_CLEANUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_pportdata*)* @qib_7322_sdma_hw_start_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qib_7322_sdma_hw_start_up(%struct.qib_pportdata* %0) #0 {
  %2 = alloca %struct.qib_pportdata*, align 8
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %2, align 8
  %3 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %4 = load i32, i32* @QIB_SENDCTRL_FLUSH, align 4
  %5 = call i32 @sendctrl_7322_mod(%struct.qib_pportdata* %3, i32 %4)
  %6 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %7 = call i32 @qib_sdma_7322_setlengen(%struct.qib_pportdata* %6)
  %8 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %9 = call i32 @qib_sdma_update_7322_tail(%struct.qib_pportdata* %8, i32 0)
  %10 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %11 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %10, i32 0, i32 1
  %12 = load i64*, i64** %11, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 0
  store i64 0, i64* %13, align 8
  %14 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %15 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %16 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @QIB_SDMA_SENDCTRL_OP_CLEANUP, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @qib_7322_sdma_sendctrl(%struct.qib_pportdata* %14, i32 %20)
  ret void
}

declare dso_local i32 @sendctrl_7322_mod(%struct.qib_pportdata*, i32) #1

declare dso_local i32 @qib_sdma_7322_setlengen(%struct.qib_pportdata*) #1

declare dso_local i32 @qib_sdma_update_7322_tail(%struct.qib_pportdata*, i32) #1

declare dso_local i32 @qib_7322_sdma_sendctrl(%struct.qib_pportdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
