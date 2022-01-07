; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap.c___handover_exceptions.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap.c___handover_exceptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_snapshot = type { i64, %struct.dm_exception_store*, %struct.TYPE_2__*, %struct.dm_exception_table }
%struct.dm_exception_store = type { i32, %struct.dm_snapshot* }
%struct.TYPE_2__ = type { i32 }
%struct.dm_exception_table = type { i32 }
%union.anon = type { %struct.dm_exception_store* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_snapshot*, %struct.dm_snapshot*)* @__handover_exceptions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__handover_exceptions(%struct.dm_snapshot* %0, %struct.dm_snapshot* %1) #0 {
  %3 = alloca %struct.dm_snapshot*, align 8
  %4 = alloca %struct.dm_snapshot*, align 8
  %5 = alloca %union.anon, align 8
  store %struct.dm_snapshot* %0, %struct.dm_snapshot** %3, align 8
  store %struct.dm_snapshot* %1, %struct.dm_snapshot** %4, align 8
  %6 = bitcast %union.anon* %5 to %struct.dm_exception_table*
  %7 = load %struct.dm_snapshot*, %struct.dm_snapshot** %4, align 8
  %8 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %7, i32 0, i32 3
  %9 = bitcast %struct.dm_exception_table* %6 to i8*
  %10 = bitcast %struct.dm_exception_table* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 %10, i64 4, i1 false)
  %11 = load %struct.dm_snapshot*, %struct.dm_snapshot** %4, align 8
  %12 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %11, i32 0, i32 3
  %13 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %14 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %13, i32 0, i32 3
  %15 = bitcast %struct.dm_exception_table* %12 to i8*
  %16 = bitcast %struct.dm_exception_table* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 4, i1 false)
  %17 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %18 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %17, i32 0, i32 3
  %19 = bitcast %union.anon* %5 to %struct.dm_exception_table*
  %20 = bitcast %struct.dm_exception_table* %18 to i8*
  %21 = bitcast %struct.dm_exception_table* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 4, i1 false)
  %22 = load %struct.dm_snapshot*, %struct.dm_snapshot** %4, align 8
  %23 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %22, i32 0, i32 1
  %24 = load %struct.dm_exception_store*, %struct.dm_exception_store** %23, align 8
  %25 = bitcast %union.anon* %5 to %struct.dm_exception_store**
  store %struct.dm_exception_store* %24, %struct.dm_exception_store** %25, align 8
  %26 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %27 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %26, i32 0, i32 1
  %28 = load %struct.dm_exception_store*, %struct.dm_exception_store** %27, align 8
  %29 = load %struct.dm_snapshot*, %struct.dm_snapshot** %4, align 8
  %30 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %29, i32 0, i32 1
  store %struct.dm_exception_store* %28, %struct.dm_exception_store** %30, align 8
  %31 = bitcast %union.anon* %5 to %struct.dm_exception_store**
  %32 = load %struct.dm_exception_store*, %struct.dm_exception_store** %31, align 8
  %33 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %34 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %33, i32 0, i32 1
  store %struct.dm_exception_store* %32, %struct.dm_exception_store** %34, align 8
  %35 = load %struct.dm_snapshot*, %struct.dm_snapshot** %4, align 8
  %36 = load %struct.dm_snapshot*, %struct.dm_snapshot** %4, align 8
  %37 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %36, i32 0, i32 1
  %38 = load %struct.dm_exception_store*, %struct.dm_exception_store** %37, align 8
  %39 = getelementptr inbounds %struct.dm_exception_store, %struct.dm_exception_store* %38, i32 0, i32 1
  store %struct.dm_snapshot* %35, %struct.dm_snapshot** %39, align 8
  %40 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %41 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %42 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %41, i32 0, i32 1
  %43 = load %struct.dm_exception_store*, %struct.dm_exception_store** %42, align 8
  %44 = getelementptr inbounds %struct.dm_exception_store, %struct.dm_exception_store* %43, i32 0, i32 1
  store %struct.dm_snapshot* %40, %struct.dm_snapshot** %44, align 8
  %45 = load %struct.dm_snapshot*, %struct.dm_snapshot** %4, align 8
  %46 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %45, i32 0, i32 1
  %47 = load %struct.dm_exception_store*, %struct.dm_exception_store** %46, align 8
  %48 = getelementptr inbounds %struct.dm_exception_store, %struct.dm_exception_store* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.dm_snapshot*, %struct.dm_snapshot** %4, align 8
  %51 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %50, i32 0, i32 2
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i32 %49, i32* %53, align 4
  %54 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %55 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.dm_snapshot*, %struct.dm_snapshot** %4, align 8
  %58 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = load %struct.dm_snapshot*, %struct.dm_snapshot** %3, align 8
  %60 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %59, i32 0, i32 0
  store i64 0, i64* %60, align 8
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
