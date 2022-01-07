; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_ruc.c_qib_migrate_qp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_ruc.c_qib_migrate_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_qp = type { %struct.TYPE_5__, i32, i32, %struct.TYPE_6__, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_5__ = type { i32, i32 (%struct.ib_event*, i32)*, i32 }
%struct.ib_event = type opaque
%struct.TYPE_6__ = type { i32 }
%struct.ib_event.0 = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }

@IB_MIG_MIGRATED = common dso_local global i32 0, align 4
@IB_EVENT_PATH_MIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qib_migrate_qp(%struct.qib_qp* %0) #0 {
  %2 = alloca %struct.qib_qp*, align 8
  %3 = alloca %struct.ib_event.0, align 8
  store %struct.qib_qp* %0, %struct.qib_qp** %2, align 8
  %4 = load i32, i32* @IB_MIG_MIGRATED, align 4
  %5 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %6 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %5, i32 0, i32 6
  store i32 %4, i32* %6, align 4
  %7 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %8 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %7, i32 0, i32 5
  %9 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %10 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %9, i32 0, i32 3
  %11 = bitcast %struct.TYPE_6__* %8 to i8*
  %12 = bitcast %struct.TYPE_6__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 4, i1 false)
  %13 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %14 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %18 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 4
  %19 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %20 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %23 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %25 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %3, i32 0, i32 2
  store i32 %27, i32* %28, align 8
  %29 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %30 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %3, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store %struct.TYPE_5__* %30, %struct.TYPE_5__** %32, align 8
  %33 = load i32, i32* @IB_EVENT_PATH_MIG, align 4
  %34 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %3, i32 0, i32 0
  store i32 %33, i32* %34, align 8
  %35 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %36 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32 (%struct.ib_event*, i32)*, i32 (%struct.ib_event*, i32)** %37, align 8
  %39 = bitcast %struct.ib_event.0* %3 to %struct.ib_event*
  %40 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %41 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 %38(%struct.ib_event* %39, i32 %43)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
