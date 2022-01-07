; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_intr.c_qib_clear_symerror_on_linkup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_intr.c_qib_clear_symerror_on_linkup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 (%struct.qib_pportdata*, i32)* }
%struct.TYPE_3__ = type { i32 }

@QIBL_LINKACTIVE = common dso_local global i32 0, align 4
@QIBPORTCNTR_IBSYMBOLERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qib_clear_symerror_on_linkup(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.qib_pportdata*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = inttoptr i64 %4 to %struct.qib_pportdata*
  store %struct.qib_pportdata* %5, %struct.qib_pportdata** %3, align 8
  %6 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %7 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @QIBL_LINKACTIVE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %25

13:                                               ; preds = %1
  %14 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %15 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32 (%struct.qib_pportdata*, i32)*, i32 (%struct.qib_pportdata*, i32)** %17, align 8
  %19 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %20 = load i32, i32* @QIBPORTCNTR_IBSYMBOLERR, align 4
  %21 = call i32 %18(%struct.qib_pportdata* %19, i32 %20)
  %22 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %23 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 8
  br label %25

25:                                               ; preds = %13, %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
