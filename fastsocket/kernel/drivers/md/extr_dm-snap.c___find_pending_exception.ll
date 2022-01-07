; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap.c___find_pending_exception.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-snap.c___find_pending_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_snapshot = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 (%struct.TYPE_6__*, %struct.TYPE_7__*)* }
%struct.TYPE_7__ = type { i32 }
%struct.dm_snap_pending_exception = type { %struct.TYPE_7__, i32*, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dm_snap_pending_exception* (%struct.dm_snapshot*, %struct.dm_snap_pending_exception*, i32)* @__find_pending_exception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dm_snap_pending_exception* @__find_pending_exception(%struct.dm_snapshot* %0, %struct.dm_snap_pending_exception* %1, i32 %2) #0 {
  %4 = alloca %struct.dm_snap_pending_exception*, align 8
  %5 = alloca %struct.dm_snapshot*, align 8
  %6 = alloca %struct.dm_snap_pending_exception*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dm_snap_pending_exception*, align 8
  store %struct.dm_snapshot* %0, %struct.dm_snapshot** %5, align 8
  store %struct.dm_snap_pending_exception* %1, %struct.dm_snap_pending_exception** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.dm_snapshot*, %struct.dm_snapshot** %5, align 8
  %10 = load i32, i32* %7, align 4
  %11 = call %struct.dm_snap_pending_exception* @__lookup_pending_exception(%struct.dm_snapshot* %9, i32 %10)
  store %struct.dm_snap_pending_exception* %11, %struct.dm_snap_pending_exception** %8, align 8
  %12 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %8, align 8
  %13 = icmp ne %struct.dm_snap_pending_exception* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %6, align 8
  %16 = call i32 @free_pending_exception(%struct.dm_snap_pending_exception* %15)
  %17 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %8, align 8
  store %struct.dm_snap_pending_exception* %17, %struct.dm_snap_pending_exception** %4, align 8
  br label %57

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %6, align 8
  %21 = getelementptr inbounds %struct.dm_snap_pending_exception, %struct.dm_snap_pending_exception* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 8
  %23 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %6, align 8
  %24 = getelementptr inbounds %struct.dm_snap_pending_exception, %struct.dm_snap_pending_exception* %23, i32 0, i32 4
  %25 = call i32 @bio_list_init(i32* %24)
  %26 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %6, align 8
  %27 = getelementptr inbounds %struct.dm_snap_pending_exception, %struct.dm_snap_pending_exception* %26, i32 0, i32 3
  %28 = call i32 @bio_list_init(i32* %27)
  %29 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %6, align 8
  %30 = getelementptr inbounds %struct.dm_snap_pending_exception, %struct.dm_snap_pending_exception* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %6, align 8
  %32 = getelementptr inbounds %struct.dm_snap_pending_exception, %struct.dm_snap_pending_exception* %31, i32 0, i32 1
  store i32* null, i32** %32, align 8
  %33 = load %struct.dm_snapshot*, %struct.dm_snapshot** %5, align 8
  %34 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %33, i32 0, i32 1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64 (%struct.TYPE_6__*, %struct.TYPE_7__*)*, i64 (%struct.TYPE_6__*, %struct.TYPE_7__*)** %38, align 8
  %40 = load %struct.dm_snapshot*, %struct.dm_snapshot** %5, align 8
  %41 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %40, i32 0, i32 1
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %6, align 8
  %44 = getelementptr inbounds %struct.dm_snap_pending_exception, %struct.dm_snap_pending_exception* %43, i32 0, i32 0
  %45 = call i64 %39(%struct.TYPE_6__* %42, %struct.TYPE_7__* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %18
  %48 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %6, align 8
  %49 = call i32 @free_pending_exception(%struct.dm_snap_pending_exception* %48)
  store %struct.dm_snap_pending_exception* null, %struct.dm_snap_pending_exception** %4, align 8
  br label %57

50:                                               ; preds = %18
  %51 = load %struct.dm_snapshot*, %struct.dm_snapshot** %5, align 8
  %52 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %51, i32 0, i32 0
  %53 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %6, align 8
  %54 = getelementptr inbounds %struct.dm_snap_pending_exception, %struct.dm_snap_pending_exception* %53, i32 0, i32 0
  %55 = call i32 @dm_insert_exception(i32* %52, %struct.TYPE_7__* %54)
  %56 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %6, align 8
  store %struct.dm_snap_pending_exception* %56, %struct.dm_snap_pending_exception** %4, align 8
  br label %57

57:                                               ; preds = %50, %47, %14
  %58 = load %struct.dm_snap_pending_exception*, %struct.dm_snap_pending_exception** %4, align 8
  ret %struct.dm_snap_pending_exception* %58
}

declare dso_local %struct.dm_snap_pending_exception* @__lookup_pending_exception(%struct.dm_snapshot*, i32) #1

declare dso_local i32 @free_pending_exception(%struct.dm_snap_pending_exception*) #1

declare dso_local i32 @bio_list_init(i32*) #1

declare dso_local i32 @dm_insert_exception(i32*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
