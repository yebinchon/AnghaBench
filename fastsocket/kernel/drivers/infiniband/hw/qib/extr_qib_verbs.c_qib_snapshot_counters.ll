; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_verbs.c_qib_snapshot_counters.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_verbs.c_qib_snapshot_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { %struct.qib_devdata* }
%struct.qib_devdata = type { i32, i32 (%struct.qib_pportdata*, i32)* }

@QIB_PRESENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@QIBPORTCNTR_WORDSEND = common dso_local global i32 0, align 4
@QIBPORTCNTR_WORDRCV = common dso_local global i32 0, align 4
@QIBPORTCNTR_PKTSEND = common dso_local global i32 0, align 4
@QIBPORTCNTR_PKTRCV = common dso_local global i32 0, align 4
@QIBPORTCNTR_SENDSTALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qib_snapshot_counters(%struct.qib_pportdata* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.qib_pportdata*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.qib_devdata*, align 8
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %15 = load %struct.qib_pportdata*, %struct.qib_pportdata** %7, align 8
  %16 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %15, i32 0, i32 0
  %17 = load %struct.qib_devdata*, %struct.qib_devdata** %16, align 8
  store %struct.qib_devdata* %17, %struct.qib_devdata** %14, align 8
  %18 = load %struct.qib_devdata*, %struct.qib_devdata** %14, align 8
  %19 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @QIB_PRESENT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %6
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %13, align 4
  br label %63

27:                                               ; preds = %6
  %28 = load %struct.qib_devdata*, %struct.qib_devdata** %14, align 8
  %29 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %28, i32 0, i32 1
  %30 = load i32 (%struct.qib_pportdata*, i32)*, i32 (%struct.qib_pportdata*, i32)** %29, align 8
  %31 = load %struct.qib_pportdata*, %struct.qib_pportdata** %7, align 8
  %32 = load i32, i32* @QIBPORTCNTR_WORDSEND, align 4
  %33 = call i32 %30(%struct.qib_pportdata* %31, i32 %32)
  %34 = load i32*, i32** %8, align 8
  store i32 %33, i32* %34, align 4
  %35 = load %struct.qib_devdata*, %struct.qib_devdata** %14, align 8
  %36 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %35, i32 0, i32 1
  %37 = load i32 (%struct.qib_pportdata*, i32)*, i32 (%struct.qib_pportdata*, i32)** %36, align 8
  %38 = load %struct.qib_pportdata*, %struct.qib_pportdata** %7, align 8
  %39 = load i32, i32* @QIBPORTCNTR_WORDRCV, align 4
  %40 = call i32 %37(%struct.qib_pportdata* %38, i32 %39)
  %41 = load i32*, i32** %9, align 8
  store i32 %40, i32* %41, align 4
  %42 = load %struct.qib_devdata*, %struct.qib_devdata** %14, align 8
  %43 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %42, i32 0, i32 1
  %44 = load i32 (%struct.qib_pportdata*, i32)*, i32 (%struct.qib_pportdata*, i32)** %43, align 8
  %45 = load %struct.qib_pportdata*, %struct.qib_pportdata** %7, align 8
  %46 = load i32, i32* @QIBPORTCNTR_PKTSEND, align 4
  %47 = call i32 %44(%struct.qib_pportdata* %45, i32 %46)
  %48 = load i32*, i32** %10, align 8
  store i32 %47, i32* %48, align 4
  %49 = load %struct.qib_devdata*, %struct.qib_devdata** %14, align 8
  %50 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %49, i32 0, i32 1
  %51 = load i32 (%struct.qib_pportdata*, i32)*, i32 (%struct.qib_pportdata*, i32)** %50, align 8
  %52 = load %struct.qib_pportdata*, %struct.qib_pportdata** %7, align 8
  %53 = load i32, i32* @QIBPORTCNTR_PKTRCV, align 4
  %54 = call i32 %51(%struct.qib_pportdata* %52, i32 %53)
  %55 = load i32*, i32** %11, align 8
  store i32 %54, i32* %55, align 4
  %56 = load %struct.qib_devdata*, %struct.qib_devdata** %14, align 8
  %57 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %56, i32 0, i32 1
  %58 = load i32 (%struct.qib_pportdata*, i32)*, i32 (%struct.qib_pportdata*, i32)** %57, align 8
  %59 = load %struct.qib_pportdata*, %struct.qib_pportdata** %7, align 8
  %60 = load i32, i32* @QIBPORTCNTR_SENDSTALL, align 4
  %61 = call i32 %58(%struct.qib_pportdata* %59, i32 %60)
  %62 = load i32*, i32** %12, align 8
  store i32 %61, i32* %62, align 4
  store i32 0, i32* %13, align 4
  br label %63

63:                                               ; preds = %27, %24
  %64 = load i32, i32* %13, align 4
  ret i32 %64
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
