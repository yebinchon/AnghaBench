; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7322.c_adj_tx_serdes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7322.c_adj_tx_serdes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_pportdata = type { i64 }
%struct.txdds_ent = type { i32 }

@QIB_IB_QDR = common dso_local global i64 0, align 8
@QIB_IB_DDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_pportdata*)* @adj_tx_serdes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adj_tx_serdes(%struct.qib_pportdata* %0) #0 {
  %2 = alloca %struct.qib_pportdata*, align 8
  %3 = alloca %struct.txdds_ent*, align 8
  %4 = alloca %struct.txdds_ent*, align 8
  %5 = alloca %struct.txdds_ent*, align 8
  %6 = alloca %struct.txdds_ent*, align 8
  store %struct.qib_pportdata* %0, %struct.qib_pportdata** %2, align 8
  %7 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %8 = call i32 @find_best_ent(%struct.qib_pportdata* %7, %struct.txdds_ent** %3, %struct.txdds_ent** %4, %struct.txdds_ent** %5, i32 1)
  %9 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %10 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @QIB_IB_QDR, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load %struct.txdds_ent*, %struct.txdds_ent** %5, align 8
  br label %28

16:                                               ; preds = %1
  %17 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %18 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @QIB_IB_DDR, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load %struct.txdds_ent*, %struct.txdds_ent** %4, align 8
  br label %26

24:                                               ; preds = %16
  %25 = load %struct.txdds_ent*, %struct.txdds_ent** %3, align 8
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi %struct.txdds_ent* [ %23, %22 ], [ %25, %24 ]
  br label %28

28:                                               ; preds = %26, %14
  %29 = phi %struct.txdds_ent* [ %15, %14 ], [ %27, %26 ]
  store %struct.txdds_ent* %29, %struct.txdds_ent** %6, align 8
  %30 = load %struct.qib_pportdata*, %struct.qib_pportdata** %2, align 8
  %31 = load %struct.txdds_ent*, %struct.txdds_ent** %6, align 8
  %32 = call i32 @write_tx_serdes_param(%struct.qib_pportdata* %30, %struct.txdds_ent* %31)
  ret void
}

declare dso_local i32 @find_best_ent(%struct.qib_pportdata*, %struct.txdds_ent**, %struct.txdds_ent**, %struct.txdds_ent**, i32) #1

declare dso_local i32 @write_tx_serdes_param(%struct.qib_pportdata*, %struct.txdds_ent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
