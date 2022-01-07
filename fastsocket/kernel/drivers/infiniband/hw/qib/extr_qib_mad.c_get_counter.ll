; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mad.c_get_counter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mad.c_get_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_ibport = type { i32 }
%struct.qib_pportdata = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.qib_pportdata*, i32)* }

@QIBPORTCNTR_PSXMITDATA = common dso_local global i32 0, align 4
@QIBPORTCNTR_PSRCVDATA = common dso_local global i32 0, align 4
@QIBPORTCNTR_PSXMITPKTS = common dso_local global i32 0, align 4
@QIBPORTCNTR_PSRCVPKTS = common dso_local global i32 0, align 4
@QIBPORTCNTR_PSXMITWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_ibport*, %struct.qib_pportdata*, i32)* @get_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_counter(%struct.qib_ibport* %0, %struct.qib_pportdata* %1, i32 %2) #0 {
  %4 = alloca %struct.qib_ibport*, align 8
  %5 = alloca %struct.qib_pportdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.qib_ibport* %0, %struct.qib_ibport** %4, align 8
  store %struct.qib_pportdata* %1, %struct.qib_pportdata** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %54 [
    i32 130, label %9
    i32 132, label %18
    i32 129, label %27
    i32 131, label %36
    i32 128, label %45
  ]

9:                                                ; preds = %3
  %10 = load %struct.qib_pportdata*, %struct.qib_pportdata** %5, align 8
  %11 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.qib_pportdata*, i32)*, i32 (%struct.qib_pportdata*, i32)** %13, align 8
  %15 = load %struct.qib_pportdata*, %struct.qib_pportdata** %5, align 8
  %16 = load i32, i32* @QIBPORTCNTR_PSXMITDATA, align 4
  %17 = call i32 %14(%struct.qib_pportdata* %15, i32 %16)
  store i32 %17, i32* %7, align 4
  br label %55

18:                                               ; preds = %3
  %19 = load %struct.qib_pportdata*, %struct.qib_pportdata** %5, align 8
  %20 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (%struct.qib_pportdata*, i32)*, i32 (%struct.qib_pportdata*, i32)** %22, align 8
  %24 = load %struct.qib_pportdata*, %struct.qib_pportdata** %5, align 8
  %25 = load i32, i32* @QIBPORTCNTR_PSRCVDATA, align 4
  %26 = call i32 %23(%struct.qib_pportdata* %24, i32 %25)
  store i32 %26, i32* %7, align 4
  br label %55

27:                                               ; preds = %3
  %28 = load %struct.qib_pportdata*, %struct.qib_pportdata** %5, align 8
  %29 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (%struct.qib_pportdata*, i32)*, i32 (%struct.qib_pportdata*, i32)** %31, align 8
  %33 = load %struct.qib_pportdata*, %struct.qib_pportdata** %5, align 8
  %34 = load i32, i32* @QIBPORTCNTR_PSXMITPKTS, align 4
  %35 = call i32 %32(%struct.qib_pportdata* %33, i32 %34)
  store i32 %35, i32* %7, align 4
  br label %55

36:                                               ; preds = %3
  %37 = load %struct.qib_pportdata*, %struct.qib_pportdata** %5, align 8
  %38 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32 (%struct.qib_pportdata*, i32)*, i32 (%struct.qib_pportdata*, i32)** %40, align 8
  %42 = load %struct.qib_pportdata*, %struct.qib_pportdata** %5, align 8
  %43 = load i32, i32* @QIBPORTCNTR_PSRCVPKTS, align 4
  %44 = call i32 %41(%struct.qib_pportdata* %42, i32 %43)
  store i32 %44, i32* %7, align 4
  br label %55

45:                                               ; preds = %3
  %46 = load %struct.qib_pportdata*, %struct.qib_pportdata** %5, align 8
  %47 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32 (%struct.qib_pportdata*, i32)*, i32 (%struct.qib_pportdata*, i32)** %49, align 8
  %51 = load %struct.qib_pportdata*, %struct.qib_pportdata** %5, align 8
  %52 = load i32, i32* @QIBPORTCNTR_PSXMITWAIT, align 4
  %53 = call i32 %50(%struct.qib_pportdata* %51, i32 %52)
  store i32 %53, i32* %7, align 4
  br label %55

54:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %55

55:                                               ; preds = %54, %45, %36, %27, %18, %9
  %56 = load i32, i32* %7, align 4
  ret i32 %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
